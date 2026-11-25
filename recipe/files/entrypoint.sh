#!/bin/bash
set -e
cd /usr/src/paperless/src
until pg_isready -h "${PAPERLESS_DBHOST:-db}" -p "${PAPERLESS_DBPORT:-5432}" -U "${PAPERLESS_DBUSER:-paperless}" >/dev/null 2>&1; do echo "waiting for postgres..."; sleep 2; done
until python -c "import redis,os;redis.from_url(os.environ.get('PAPERLESS_REDIS','redis://redis:6379')).ping()" >/dev/null 2>&1; do echo "waiting for redis..."; sleep 2; done
# the folders upstream's init-folders creates: without data/index every first start on a new data volume logged a
# FileNotFoundError and document_importer failed at "Updating search index" after writing the data (v3.1.3-r1)
mkdir -p "${PAPERLESS_DATA_DIR:-/usr/src/paperless/data}/index" "${PAPERLESS_DATA_DIR:-/usr/src/paperless/data}/log" \
  "${PAPERLESS_MEDIA_ROOT:-/usr/src/paperless/media}/documents/originals" "${PAPERLESS_MEDIA_ROOT:-/usr/src/paperless/media}/documents/thumbnails" \
  "${PAPERLESS_CONSUMPTION_DIR:-/usr/src/paperless/consume}"
# idempotent first-boot init (Django migrate + non-interactive superuser + search index)
python manage.py migrate --skip-checks --no-input
python manage.py manage_superuser || true
python manage.py document_index reindex || true
exec supervisord -c /etc/supervisor/paperless.conf -n
