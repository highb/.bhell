#!/bin/bash

source ~/.bhell/env.sh
echo "Installing the following taps: ${TAPS}"
for TAP in $TAPS; do
    if ! brew tap | grep $TAP >> "${DEBUG_LOG}"; then
        brew tap $TAP
    fi
done

echo "Installing the following brews: ${BREWS}"
for BREW in $BREWS; do
    if ! brew list $BREW >> "${DEBUG_LOG}"; then
        brew install $BREW
    fi
done
