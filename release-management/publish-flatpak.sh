#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."

git fetch origin
sha=$(git rev-parse origin/downstream)
git tag "downstream-$sha" "$sha"
git push origin "downstream-$sha"
