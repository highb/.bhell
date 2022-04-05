#!/bin/bash

source ~/.bhell/env.sh

if [ "$(uname)" == "Darwin" ]; then
    echo "OSX fonts are managed in Brew. No-op."
elif [ "$(uname)" == "Linux" ]; then
    if [ ! -d ~/.fonts ]; then
        mkdir ~/.fonts
    fi

    cp -v "${FONTS}"/* ~/.fonts/
fi
