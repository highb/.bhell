#!/bin/bash

export BHELL="${HOME}/.bhell"

# Homebrew

if [ "$(uname)" == "Darwin" ]; then
  export PACKAGES_FILE="${BHELL}/packages/osx-packages"
  export TAPS_FILE="${BHELL}/packages/osx-homebrew-taps"
  export BREWS_FILE="${BHELL}/packages/osx-brews"
elif [ "$(uname)" == "Linux" ]; then
  export PACKAGES_FILE="${BHELL}/packages/ubuntu-packages"
  export SNAPS_FILE="${BHELL}/packages/linux-snaps"
  export TAPS_FILE="${BHELL}/packages/linux-homebrew-taps"
  export BREWS_FILE="${BHELL}/packages/linux-brews"
else
  echo "Unknown platform $(uname)"
  exit 1
fi

export BREWS="$(cat ${BREWS_FILE} | xargs)"
export TAPS="$(cat ${TAPS_FILE} | xargs)"
export PACKAGES="$(cat ${PACKAGES_FILE} | xargs)"

export CONFIGS_DIR="${BHELL}/configs"
export DEBUG_LOG="${HOME}/bhell-debug.log"
export FONTS="${BHELL}/fonts/ttf"
