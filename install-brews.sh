#!/bin/bash

source ~/.bhell/env.sh

echo "Installing the following brews: ${BREWS}"
for BREW in $BREWS; do
    if ! brew list $BREW >> "${DEBUG_LOG}"; then
        brew install $BREWS
    fi
done