# Paperless-ngx: ReadyStack build kit

The offline build kit for the Docker image `readystack/paperlessngx:v3.4.1-CE-ubuntu24.04-r4`. It holds what the image is built from (upstream source, base images, toolchain, pinned dependencies) and the documents, so the image can be rebuilt with no network access (`docker build --network=none`).

- Release: [v3.4.1-CE-ubuntu24.04-r4](https://github.com/readystack-dev/paperlessngx/releases/tag/v3.4.1-CE-ubuntu24.04-r4)
- Image: [`docker.io/readystack/paperlessngx:v3.4.1-CE-ubuntu24.04-r4`](https://hub.docker.com/r/readystack/paperlessngx/tags), manifest digest `sha256:cec5de8275724eba69dcb544071d8b91fbffba59a0285bcb7795be26630b377f`
- Product page: https://readystack.dev/products/paperlessngx
- Defects: this repository's Issues (defects recorded from 25 November 2026 on) and https://readystack.dev/defects.html?product=paperlessngx

Paperless-ngx is distributed under its upstream licence (GPL-3.0-only); the kit contains upstream's source under that licence, and each vendored component under its own.

## Download

From the [v3.4.1-CE-ubuntu24.04-r4 release](https://github.com/readystack-dev/paperlessngx/releases/tag/v3.4.1-CE-ubuntu24.04-r4): `ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r4.tar.gz` (2.3 GB), SHA-256 `68120d27784d4655d9b17947bea05ed512dfcb75f43c7350a3c09139a3e445d9`.

GitHub limits a release file to 2 GiB, so the kit is published in 2 parts. Download them all and join them:

```sh
cat ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r4.tar.gz.part-* > ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r4.tar.gz
sha256sum --check --ignore-missing SHA256SUMS
```

## Verify and rebuild

The rebuild statement is signed with the ReadyStack release key. Check the signature before you rely on it:

```sh
cosign verify-blob --key https://readystack.dev/keys/cosign.pub \
  --bundle ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r4.rebuild.json.sigstore ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r4.rebuild.json
```

Unpack with `-p` so file modes are kept, then follow the kit's own README.md and docs/REBUILD.md:

```sh
tar -xpzf ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r4.tar.gz
cd v3.4.1-CE-ubuntu24.04-r4
less README.md docs/REBUILD.md
```

The build trail (`ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r4.trail.json`, signed the same way, and its Markdown copy) records how this release was built and checked.

## This repository

`recipe/` holds the kit's recipe files (Dockerfiles, build scripts, pins) as published at https://readystack.dev/products/paperlessngx/recipe. The complete kit is the release download. Each release is a tag here.
