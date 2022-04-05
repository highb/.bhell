#!/bin/bash

export BHELL="${HOME}/.bhell"

# Homebrew
export TAPS_FILE="${BHELL}/packages/linux-homebrew-taps"
export TAPS="$(cat ${TAPS_FILE} | xargs)"
export BREWS_FILE="${BHELL}/packages/linux-brews"
export BREWS="$(cat ${BREWS_FILE} | xargs)"

export PACKAGES_FILE="${BHELL}/packages/ubuntu-packages"
export PACKAGES="$(cat ${PACKAGES_FILE} | xargs)"

export CONFIGS_DIR="${BHELL}/configs"
export DEBUG_LOG="${HOME}/bhell-debug.log"
export FONTS="${BHELL}/fonts/ttf"
