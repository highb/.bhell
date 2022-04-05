#!/bin/bash

source ~/.bhell/env.sh

${BHELL}/install-packages.sh

${BHELL}/install-fonts.sh

${BHELL}/install-brews.sh

${BHELL}/install-curl-to-bash.sh

# TODO: Install alacritty

${BHELL}/symlink-configs.sh
