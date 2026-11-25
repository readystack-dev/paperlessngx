# Provenance — Paperless-ngx (`v3.4.1-CE-ubuntu24.04-r5`)

Every item below is copied from a record in this archive; the record is named in brackets.

## Source

- Upstream repository: https://github.com/paperless-ngx/paperless-ngx
- Revision built: `v3.4.1` (commit `b67cfdf3fdfcde4883c4ac136c8545835f679d21`)
- Source tree: `f0bda158ccfdec9da49c6c8e55f649135208b554b3653074858c364c3c3d0828` over 1558 files [`docs/provenance/SOURCE_TREE_HASH.json`]
- Community Edition only: enterprise code is removed or refused before the build (CE audit at acquire).

## Build

- Method: `source-rebuild-python`; base image `ubuntu:24.04`
- Compiled with `--network=none` from vendored source, dependencies and base images; BuildKit pinned to `moby/buildkit:v0.31.2` (shipped in `toolchain/`).
- SOURCE_DATE_EPOCH: `1795543328` [`SOURCE_DATE_EPOCH.txt`]
- Frozen inputs: [`docs/provenance/FREEZE_MANIFEST.json`], build recipe: [`docs/provenance/BUILD_RECIPE.json`].

## Output

- Published image: `readystack/paperlessngx:v3.4.1-CE-ubuntu24.04-r5` — index digest `sha256:0537cc7172c649a8e3c086bdc4913c5490afd6577c3024cb10d775157c06d8e0` [`docs/provenance/LOCKED_DIGEST.txt`]
- linux/amd64 image digest `sha256:5ada00454ed0314a34445928cc82f12c5ec8e8059272a1c4e75e18c90759ba7d` — reproduced from this archive before publishing [`docs/provenance/REPRO_VERIFICATION.json`].

## Attestations and signature

- SBOM + SLSA provenance attached to the image: attached: an SPDX SBOM and SLSA v1 provenance [`docs/provenance/SCOUT_VERDICT.json`]
- cosign signature by the ReadyStack release key: verified before publishing. Check it: `cosign verify --key https://readystack.dev/keys/cosign.pub readystack/paperlessngx:v3.4.1-CE-ubuntu24.04-r5`

## Pinned inputs, and why

- 17 pinned inputs, each with where it came from, why this one, how it was checked and when it was decided: `docs/PINS.md` [`docs/provenance/PINS.json`] (upstream source 2, base and build images 1, image digests 1, language runtimes and toolchains 1, pins in the kit's dockerfiles 5, readystack's build engine 1, dependencies upstream chose 2, services the release checks run beside 4).

## Build trail

- How this release passed through the ReadyStack harness, record by record (every chain, drive, stage, review round, defect and check, each naming the record it is copied from): `ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r5.trail.json`, published beside this archive and signed with the release key (`ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r5.trail.json.sigstore`), and readable at https://readystack.dev/products/paperlessngx/trail/v3.4.1-CE-ubuntu24.04-r5.

