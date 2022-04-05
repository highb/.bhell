#!/bin/bash

source ~/.bhell/env.sh

${BHELL}/install-packages.sh

${BHELL}/install-fonts.sh

${BHELL}/install-brews.sh

if [ ! -d ~/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ ! -d ~/.vim_runtime ]; then
  git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
  sh ~/.vim_runtime/install_awesome_vimrc.sh
else
  pushd ~/.vim_runtime
  git pull
  popd
fi

if [ ! -d ~/.tmux ]; then
  git clone --depth=1 https://github.com/gpakosz/.tmux.git ~/.tmux
  ln -s -f .tmux/.tmux.conf ~/.tmux.conf
else
  pushd ~/.tmux
  git pull
  popd
fi

mkdir ~/src
mkdir -p ~/src/github/alacritty/alacritty
# TODO: Install alacritty

${BHELL}/symlink-configs.sh
