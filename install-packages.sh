#!/bin/bash

source ~/.bhell/env.sh

echo "Installing the following packages: ${PACKAGES}"
for PACKAGE in $PACKAGES; do
    if [ "$(uname)" == "Darwin" ]; then
        echo "Installing OSX package ${PACKAGE}..."
    elif [ "$(uname)" == "Linux" ]; then
        if ! dpkg -s "${PACKAGE}" >> "${DEBUG_LOG}"; then
            sudo apt install "${PACKAGE}"
        fi
    fi
done
