#!/bin/bash

export BHELL="${HOME}/.bhell"
export BREWS_FILE="${BHELL}/packages/linux-brews"
export BREWS="$(cat ${BREWS_FILE} | xargs)"
export CONFIGS_DIR="${BHELL}/configs"
export DEBUG_LOG="${HOME}/bhell-debug.log"
export FONTS="${BHELL}/fonts/ttf"
export PACKAGES_FILE="${BHELL}/packages/ubuntu-packages"
export PACKAGES="$(cat ${PACKAGES_FILE} | xargs)"