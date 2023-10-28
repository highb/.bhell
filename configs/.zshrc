# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# zsh perf profiling
#zmodload zsh/zprof

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="spaceship"
#ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  aliases
  aws
  asdf
#  brew
#  bundler
  colorize
  colored-man-pages
  copybuffer
  copyfile
  copypath
  docker
  git
  github
#  golang
  helm
  httpie
  kubectl
  python
  poetry
#  ruby
# fzf
  zoxide
#  zsh-interactive-cd
#  zsh-navigation-tools
)

if [[ "$(uname)" == "Linux" ]]; then
  export ZPLUG_HOME=/home/linuxbrew/.linuxbrew/opt/zplug
elif [[ "$(uname)" == "Darwin" ]]; then
  export ZPLUG_HOME=/opt/homebrew/opt/zplug
fi
source $ZPLUG_HOME/init.zsh

zplug "changyuheng/fz", defer:1
zplug "rupa/z", use:z.sh
zplug "jeffreytse/zsh-vi-mode"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "MichaelAquilina/zsh-you-should-use"

# zplug check returns true if all packages are installed
# Therefore, when it returns false, run zplug install
if ! zplug check; then
    zplug install
fi

# Then, source plugins and add commands to $PATH
zplug load
source $ZSH/oh-my-zsh.sh

export ZSH_COMMAND_TIME_EXCLUDE=(vim)


# User configuration

# Spaceship prompt
#SPACESHIP_KUBECTL_SHOW=true
#SPACESHIP_KUBECONTEXT_PREFIX='☸️  '
# Just comment a section if you want to disable it
#SPACESHIP_PROMPT_ORDER=(
#  time          # Time stamps section (Disabled)
#  user          # Username section
#  dir           # Current directory section
#  host          # Hostname section
#  git           # Git section (git_branch + git_status)
#  hg            # Mercurial section (hg_branch  + hg_status)
  # package     # Package version (Disabled)
#  node          # Node.js section
#  ruby          # Ruby section
#  elixir        # Elixir section
  # xcode       # Xcode section (Disabled)
#  swift         # Swift section
#  golang        # Go section
#  php           # PHP section
#  rust          # Rust section
#  haskell       # Haskell Stack section
  # julia       # Julia section (Disabled)
  # docker      # Docker section (Disabled)
#  aws           # Amazon Web Services section
#  gcloud        # Google Cloud Platform section
#  venv          # virtualenv section
#  conda         # conda virtualenv section
#  pyenv         # Pyenv section
#  dotnet        # .NET section
  # ember       # Ember.js section (Disabled)
#  kubectl_context   # Kubectl context section
#  terraform     # Terraform workspace section
#  exec_time     # Execution time
#  line_sep      # Line break
#  battery       # Battery level and status
#  vi_mode     # Vi-mode indicator (Disabled)
#  jobs          # Background jobs indicator
#  exit_code     # Exit code section
#  char          # Prompt character
#)

#SPACESHIP_RPROMPT_ORDER=(
#    exec_time
#    time
#)
#
eval "$(starship init zsh)"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias l="exa -h"
alias ll="exa -lh"
alias lla="exa -lah"
alias la="exa -ah"
alias lsa="exa -lah"


export PATH="${HOME}/.bhell/bin:${PATH}"

export PATH="/usr/local/opt/openjdk@11/bin:$PATH"

export PATH="${HOME}/.local/bin:${PATH}"

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GO111MODULE=on

#autoload -Uz compinit
#compinit
#source /Users/brandonhigh/.jfrog/jfrog_zsh_completion

# navi CLI cheatsheet tool
#eval "$(navi widget zsh)"

# use delta for kubectl diff
export KUBECTL_EXTERNAL_DIFF="delta --color-only"

# nnn file browser enhanchements
export NNN_PLUG='f:finder;o:fzopen;p:mocplay;d:diffs;t:nmount;v:imgview;J:autojump;'

#[[ -s "/Users/brandonhigh/.gvm/scripts/gvm" ]] && source "/Users/brandonhigh/.gvm/scripts/gvm"

#autoload -U +X bashcompinit && bashcompinit
#WORK_ZSH_CONFIG="${HOME}/.zshrc.work"
#if [ -f "${WORK_ZSH_CONFIG}" ]; then
#  source "${WORK_ZSH_CONFIG}"
#fi

alias tf="terraform"
alias ts="tsh"
alias tshkli="tsh kube login"
alias tshkls="tsh kube ls"
alias tshli="tsh login"
alias tshlo="tsh logout"

function kes-force-sync() {
  # If either arg is empty, print usage
  if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: kes-bump <namespace> <externalSecret>"
    return 1
  fi
  NS="${1}"
  ES="${2}"
  kubectl annotate -n $NS es $ES force-sync=$(date +%s) --overwrite
}

# . ~/.asdf/plugins/java/set-java-home.zsh

# Setup devbox for global nix goodness
#eval "$(devbox global shellenv)"

# Setup direnv for per-env tooling alternative to asdf
#eval "$(direnv hook bash)"


# zsh perf profiling
#zprof
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"

export PATH="$HOME/.poetry/bin:$PATH"
export PATH="${PATH}:${HOME}/.krew/bin"

#export PATH="/usr/local/anaconda3/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="$HOME/.sdkman"
#[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


#ATUIN_NOBIND="true"
#eval "$(atuin init zsh)"
#bindkey '^r' _atuin_search_widget



# pnpm
export PNPM_HOME="/Users/brandonhigh/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


echo "Completed .zshrc"
