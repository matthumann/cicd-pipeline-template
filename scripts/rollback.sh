#!/usr/bin/env bash
# Sample rollback step — re-points an environment at its previous release.
# Pairs with the release marker that deploy.sh records. No-op placeholder.
set -euo pipefail

ENV="${1:?usage: rollback.sh <env>}"

echo ">> Rolling back '$ENV' to previous release"
echo ">> [placeholder] read previous release marker"
echo ">> [placeholder] re-point $ENV at previous artifact"
echo ">> [placeholder] run smoke test against $ENV"
echo ">> Rollback of '$ENV' complete."
