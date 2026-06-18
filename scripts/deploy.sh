#!/usr/bin/env bash
# Sample deploy step. Intentionally a no-op (echo only) so the template is safe
# to run anywhere. Replace the body with a real deploy (kubectl apply, scp +
# systemctl restart, terraform apply, etc.). Designed to be idempotent: running
# it twice with the same artifact must leave the environment in the same state.
set -euo pipefail

ENV="${1:?usage: deploy.sh <env> <artifact>}"
ARTIFACT="${2:?usage: deploy.sh <env> <artifact>}"

echo ">> Deploying '$ARTIFACT' to '$ENV'"
echo ">> [placeholder] record release marker for rollback"
echo ">> [placeholder] push artifact to $ENV"
echo ">> [placeholder] run smoke test against $ENV"
echo ">> Deploy to '$ENV' complete."
