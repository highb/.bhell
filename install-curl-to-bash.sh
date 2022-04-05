
if [ "$(uname)" == "Darwin" ]; then
    # gcloud cli
    echo "Installing gcloud tools..."
    curl https://sdk.cloud.google.com > install.sh
    bash install.sh --disable-prompts
elif [ "$(uname)" == "Linux" ]; then
    echo "Installing zplug..."
    if [ ! -d /home/linuxbrew/.linuxbrew/opt/zplug ]; then
      curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
    fi
fi

# Below this line should work on all shells
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