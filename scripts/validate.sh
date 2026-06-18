#!/usr/bin/env bash
# Pre-deploy gate. Fails fast if the target environment isn't recognized, so a
# typo can never deploy to an unintended place. Extend with real checks
# (config present, secrets reachable, target healthy) before each deploy.
set -euo pipefail

ENV="${1:?usage: validate.sh <env>}"

case "$ENV" in
  dev|staging|prod)
    echo ">> Environment '$ENV' is valid. Pre-deploy checks passed."
    ;;
  *)
    echo "ERROR: unknown environment '$ENV' (expected dev|staging|prod)" >&2
    exit 1
    ;;
esac
