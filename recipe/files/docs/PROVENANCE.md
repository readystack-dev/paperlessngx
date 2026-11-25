# Provenance — Paperless-ngx (`v3.4.1-CE-ubuntu24.04-r4`)

Every item below is copied from a record in this archive; the record is named in brackets.

## Source

- Upstream repository: https://github.com/paperless-ngx/paperless-ngx
- Revision built: `v3.4.1` (commit `b67cfdf3fdfcde4883c4ac136c8545835f679d21`)
- Source tree: `f0bda158ccfdec9da49c6c8e55f649135208b554b3653074858c364c3c3d0828` over 1558 files [`docs/provenance/SOURCE_TREE_HASH.json`]
- Community Edition only: enterprise code is removed or refused before the build (CE audit at acquire).

## Build

- Method: `source-rebuild-python`; base image `ubuntu:24.04`
- Compiled with `--network=none` from vendored source, dependencies and base images; BuildKit pinned to `moby/buildkit:v0.31.2` (shipped in `toolchain/`).
- SOURCE_DATE_EPOCH: `1794578592` [`SOURCE_DATE_EPOCH.txt`]
- Frozen inputs: [`docs/provenance/FREEZE_MANIFEST.json`], build recipe: [`docs/provenance/BUILD_RECIPE.json`].

## Output

- Published image: `readystack/paperlessngx:v3.4.1-CE-ubuntu24.04-r4` — index digest `sha256:8df5c3b926e2d01c8c9139bda30a31e21d7c35149b040b3c582ee7e2008ec7b2` [`docs/provenance/LOCKED_DIGEST.txt`]
- linux/amd64 image digest `sha256:cec5de8275724eba69dcb544071d8b91fbffba59a0285bcb7795be26630b377f` — reproduced from this archive before publishing [`docs/provenance/REPRO_VERIFICATION.json`].

## Attestations and signature

- SBOM + SLSA provenance attached to the image: attached: an SPDX SBOM and SLSA v1 provenance [`docs/provenance/SCOUT_VERDICT.json`]
- cosign signature by the ReadyStack release key: verified before publishing. Check it: `cosign verify --key https://readystack.dev/keys/cosign.pub readystack/paperlessngx:v3.4.1-CE-ubuntu24.04-r4`

## Pinned inputs, and why

- 17 pinned inputs, each with where it came from, why this one, how it was checked and when it was decided: `docs/PINS.md` [`docs/provenance/PINS.json`] (upstream source 2, base and build images 1, image digests 1, language runtimes and toolchains 1, pins in the kit's dockerfiles 5, readystack's build engine 1, dependencies upstream chose 2, services the release checks run beside 4).

## Build trail

- How this release passed through the ReadyStack harness, record by record (every chain, drive, stage, review round, defect and check, each naming the record it is copied from): `ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r4.trail.json`, published beside this archive and signed with the release key (`ReadyStack-paperlessngx-v3.4.1-CE-ubuntu24.04-r4.trail.json.sigstore`), and readable at https://readystack.dev/products/paperlessngx/trail/v3.4.1-CE-ubuntu24.04-r4.

