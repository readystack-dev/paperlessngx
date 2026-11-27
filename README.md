[![ReadyStack](https://readystack.dev/logo.svg)](https://readystack.dev)

**Stable, Open-source Releases, Automated** · [readystack.dev](https://readystack.dev)

[![Docker Hub](https://img.shields.io/badge/Docker%20Hub-readystack%2Fpaperlessngx-2496ED?logo=docker&logoColor=white)](https://hub.docker.com/r/readystack/paperlessngx) [![Docker pulls](https://img.shields.io/docker/pulls/readystack/paperlessngx)](https://hub.docker.com/r/readystack/paperlessngx) [![Grade at release](https://img.shields.io/badge/grade%20at%20release-A%20%2894%25%29-2ea44f)](https://readystack.dev/products/paperlessngx) [![Signed: cosign](https://img.shields.io/badge/signed-cosign-2ea44f)](https://readystack.dev/keys/cosign.pub) ![SBOM: SPDX](https://img.shields.io/badge/SBOM-SPDX-2ea44f) ![Provenance: SLSA v1](https://img.shields.io/badge/provenance-SLSA%20v1-2ea44f) ![Offline rebuild: verified](https://img.shields.io/badge/offline%20rebuild-verified-2ea44f)

# Paperless-ngx: ReadyStack build kit

The offline build kit for the Docker image `readystack/paperlessngx:v3.4.1-CE-ubuntu24.04-r5`. It holds what the image is built from (upstream source, base images, toolchain, pinned dependencies) and the documents, so the image can be rebuilt with no network access (`docker build --network=none`).

- Release: [v3.4.1-CE-ubuntu24.04-r5](https://github.com/readystack-dev/paperlessngx/releases/tag/v3.4.1-CE-ubuntu24.04-r5)
- Image: [`docker.io/readystack/paperlessngx:v3.4.1-CE-ubuntu24.04-r5`](https://hub.docker.com/r/readystack/paperlessngx/tags), manifest digest `sha256:5ada00454ed0314a34445928cc82f12c5ec8e8059272a1c4e75e18c90759ba7d`
- Product page: https://readystack.dev/products/paperlessngx
- Source and build recipe: https://readystack.dev/products/paperlessngx/recipe
- Build trail: https://readystack.dev/products/paperlessngx/trail/v3.4.1-CE-ubuntu24.04-r5
- Defects: this repository's Issues (defects recorded from 25 November 2026 on) and https://readystack.dev/defects.html?product=paperlessngx

## The image

ONE product container (supervisord runs the granian ASGI webserver [:8000] + a Celery worker + Celery beat scheduler + the document consumer) PLUS two required datastore sidecars the customer provides: a PostgreSQL server and a Redis broker. NOT a single self-contained image — Paperless is multi-service. This lean CE image ships only English OCR (tesseract-ocr-eng); other languages need an image built with extra tesseract-ocr-<lang> packages, which the archive's offline rebuild does not do (it reproduces this English-only image).

## Who uses Paperless-ngx and why

Households, freelancers and small offices who want to scan their paper and find any document again later.

Paperless-ngx turns scanned paper into a searchable online archive. It runs OCR on each document, files it with tags, correspondents and types it can learn to suggest, and keeps the data on your own server.

A typical use: A household scans its letters, bills and contracts as they arrive. Paperless-ngx reads each scan, adds searchable text, tags it with the sender and document type, and stores it as an archival PDF beside the original; when a warranty is needed years later, a full-text search finds it.

From the upstream project's own description: https://github.com/paperless-ngx/paperless-ngx, https://docs.paperless-ngx.com/.

## This release

- Docker Scout policy grade at release: **A** (94%), graded 2026-11-25 with `docker scout policy` (CLI 1.26.0, docker-default configuration).
  - Docker Scout counts 214 packages with copyleft licences (AGPL, GPL, LGPL, MPL), 204 of them operating-system packages (it counts only packages whose licence it can read; the SBOM lists every component). AGPL: fonts-urw-base35, ghostscript, jbig2dec, libgs-common, libgs10.
- Signed with ReadyStack's release key (fingerprint `04daa92344a52dbc`): https://readystack.dev/keys/cosign.pub.
- Runs as a non-root user (`paperless`).
- Attestations on the image: an SPDX SBOM and SLSA provenance v1.
- Rebuilt from this kit with network egress blocked on 2026-11-25; the rebuilt image digest is the published one.
- Base: Ubuntu 24.04.

The current grade, measured again every day, is on https://readystack.dev/products/paperlessngx.

Paperless-ngx is distributed under its upstream licence (GPL-3.0-only); the kit contains upstream's source under that licence, and each vendored component under its own.

## Download

From the [v3.4.1-CE-ubuntu24.04-r5 release](https://github.com/readystack-dev/paperlessngx/releases/tag/v3.4.1-CE-ubuntu24.04-r5): `ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r5.tar.gz` (2.3 GB), SHA-256 `fd275f23b716593bf128278f31910661dd2f729e946bf43b5c412eae8e1aab2a`.

GitHub limits a release file to 2 GiB, so the kit is published in 2 parts. Download them all and join them:

```sh
cat ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r5.tar.gz.part-* > ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r5.tar.gz
sha256sum --check --ignore-missing SHA256SUMS
```

## Verify and rebuild

The rebuild statement is signed with the ReadyStack release key. Check the signature before you rely on it:

```sh
cosign verify-blob --key https://readystack.dev/keys/cosign.pub \
  --bundle ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r5.rebuild.json.sigstore ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r5.rebuild.json
```

Unpack with `-p` so file modes are kept, then follow the kit's own README.md and docs/REBUILD.md:

```sh
tar -xpzf ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r5.tar.gz
cd v3.4.1-CE-ubuntu24.04-r5
less README.md docs/REBUILD.md
```

The build trail (`ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r5.trail.json`, signed the same way, and its Markdown copy) records how this release was built and checked.

## This repository

`recipe/` holds the kit's recipe files (Dockerfiles, build scripts, pins) as published at https://readystack.dev/products/paperlessngx/recipe. The complete kit is the release download. Each release is a tag here. How to report a vulnerability: [SECURITY.md](SECURITY.md).

## About ReadyStack

**Stable, Open-source Releases, Automated.** ReadyStack releases popular open-source apps every week with every available critical and high security fix applied, plus full documentation, reference data, tests and a build recipe that recreates each release bit-for-bit. Each release is rebuilt from its pinned inputs with the network off, checked against its published digest, signed, and scanned and graded again every day. The images and build kits are free, and ReadyStack is soon to be a nonprofit.

[readystack.dev](https://readystack.dev) · [All products](https://readystack.dev/products.html) · [Build kits on GitHub](https://github.com/readystack-dev) · [Defect log](https://readystack.dev/defects.html) · contact@readystack.dev

— ReadyStack · https://readystack.dev
