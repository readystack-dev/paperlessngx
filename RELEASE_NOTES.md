# Paperless-ngx v3.4.1 — ReadyStack release `v3.4.1-CE-ubuntu24.04-r5`

Generated 2026-11-25 from this release's build records and strategy. Statements that come from a single record name it in brackets; the others come from this release's strategy and build log.

## Release

- **Image:** `readystack/paperlessngx:v3.4.1-CE-ubuntu24.04-r5` (linux/amd64). Index digest `sha256:0537cc7172c649a8e3c086bdc4913c5490afd6577c3024cb10d775157c06d8e0` [`docs/provenance/LOCKED_DIGEST.txt`].
- **Image manifest digest:** `sha256:5ada00454ed0314a34445928cc82f12c5ec8e8059272a1c4e75e18c90759ba7d` [`TARGET_DIGEST.txt`].
- **Upstream:** Paperless-ngx v3.4.1 built from source at `v3.4.1` of https://github.com/paperless-ngx/paperless-ngx — upstream notes: https://github.com/paperless-ngx/paperless-ngx/releases/tag/v3.4.1 [`docs/provenance/BUILD_RECIPE.json`].
- **Base image:** `ubuntu:24.04`; runtime user `paperless`.
- **Build:** `source-rebuild-python`, compiled offline with `--network=none`.
- **Supersedes:** ReadyStack release `v3.4.1-CE-ubuntu24.04-r4`.

## What changed in this release

- Upstream version unchanged (v3.4.1); ReadyStack rebuild.
- Paperless-ngx v3.4.1 is unchanged from the release this supersedes (v3.4.1-CE-ubuntu24.04-r4); this release rebuilds it. Changes: libssh-4 moves from 0.10.6-2ubuntu0.5 to 0.10.6-2ubuntu0.6 (USN-9187-1); libssh-gcrypt-4 moves from 0.10.6-2ubuntu0.5 to 0.10.6-2ubuntu0.6 (USN-9187-1). Settings, ports and data volumes are those of v3.4.1-CE-ubuntu24.04-r4: replace the container with this image on the same volumes.

## Security status at release (measured 2026-11-25)

- **Docker Scout:** 0 fixable critical/high vulnerabilities; runs as `paperless` (non-root); SBOM + provenance attestations present (SPDX SBOM + SLSA v1) [`docs/provenance/SCOUT_VERDICT.json`].
- **OSV cross-check:** no fixable critical/high vulnerability beyond Docker Scout's findings.
- **Signature:** cosign signature verified by ReadyStack's release gate before publishing; check it yourself with `cosign verify --key https://readystack.dev/keys/cosign.pub readystack/paperlessngx:v3.4.1-CE-ubuntu24.04-r5` (signatures are recorded in the public Sigstore transparency log).
- **ReadyStack release check at release:** passed (ReadyStack's own test, not a Docker Scout grade). Vulnerabilities are disclosed every day and the image never changes, so it is re-checked daily, beside Docker Scout's own dated grade, at https://readystack.dev/queue.

## Reproducibility

Rebuilds offline from this archive to the identical image digest `sha256:5ada00454ed0314a34445928cc82f12c5ec8e8059272a1c4e75e18c90759ba7d`: run `./BUILD_OFFLINE.sh`, then `./VERIFY_OFFLINE.sh` (add `--online` to confirm the Docker Hub tag holds the same digest). Before publishing, ReadyStack rebuilt the kit with `./BUILD_OFFLINE.sh` and compared the result with the published digest [`docs/provenance/REPRO_VERIFICATION.json`], then ran `./BUILD_OFFLINE.sh` and `./VERIFY_OFFLINE.sh` from this archive (without `--online`).

## Validation

- 7 of 7 use cases passed (7 authored) against the running image [`docs/validation/test-results.json`].

## Known issues

- None found (reviewed by held semantic review (Claude) on 2026-11-25).

## Verify this archive

```
sha256sum -c CHECKSUMS.sha256
./BUILD_OFFLINE.sh && ./VERIFY_OFFLINE.sh --online
cosign verify --key https://readystack.dev/keys/cosign.pub readystack/paperlessngx:v3.4.1-CE-ubuntu24.04-r5
```

ReadyStack records every signature in the public Sigstore transparency log (Rekor), so the command needs no extra flags.

