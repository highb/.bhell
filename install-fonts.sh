#!/bin/bash

source ~/.bhell/env.sh

if [ ! -d ~/.fonts ]; then
    mkdir ~/.fonts
fi

cp -v "${FONTS}"/* ~/.fonts/
