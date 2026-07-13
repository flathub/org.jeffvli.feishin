#!/bin/bash
set -euo pipefail

flatpak-builder \
  --user \
  --install-deps-from=flathub \
  --force-clean \
  --ccache \
  --keep-build-dirs \
  build-dir org.jeffvli.feishin.yml