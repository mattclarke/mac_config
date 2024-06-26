# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mattclarke/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME=agnoster

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_MAGIC_FUNCTIONS=true

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions z)


source $ZSH/oh-my-zsh.sh

autoload zmv

# User configuration

# Don't share history between running sessions
SHARE_HISTORY="false"
setopt no_share_history
unsetopt share_history
setopt HIST_IGNORE_ALL_DUPS
setopt inc_append_history

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Add the brew version of clang
#export PATH="/usr/local/opt/llvm/bin:$PATH"
#export CC="/usr/local/opt/llvm/bin/clang"
#export CXX="$CC++"
#export LDFLAGS="-L/usr/local/opt/llvm/lib"
#export CPPFLAGS="-I/usr/local/opt/llvm/include"

# Add rust
export PATH="$HOME/.cargo/bin:$PATH"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Use neovim
alias vim='nvim'

# Make ls friendly
#alias ls='ls -GFh'

# Use lsd instead of ls
alias ls='lsd'

# History and "grep"
alias hg="history | rg"
alias hf="history | fzf"

# Search Python files without typing the glob
alias rgpy='rg $1 -g "*.py" -g "\!venv"'

# mkdir and cd
mkcd ()
{
    mkdir -p -- "$1" && cd -P -- "$1"
}

# Set EPICS gateway for RO from outside
nin_gw ()
{
    export EPICS_CA_ADDR_LIST=idmz-ro-epics-gw-tn.esss.lu.se 
    export EPICS_CA_AUTO_ADDR_LIST=No
    export EPICS_PVA_ADDR_LIST=idmz-ro-epics-gw-tn.esss.lu.se 
    export EPICS_PVA_AUTO_ADDR_LIST=No
}

# Clear all epics address env vars
clear_epics ()
{
    unset EPICS_CA_ADDR_LIST 
    unset EPICS_CA_AUTO_ADDR_LIST
    unset EPICS_PVA_ADDR_LIST 
    unset EPICS_PVA_AUTO_ADDR_LIST
}

# Commands for connecting to instruments
inst ()
{
    ssh -J mattclarke@ssh4.esss.dk mattclarke@"$1"-nicosserver01.daq.esss.dk
}

instgui ()
{
    ssh -L 3389:"$1"-nicosserver01.daq.esss.dk:1301 mattclarke@ssh4.esss.dk
}

# Stop openssl from crashing gdb
export OPENSSL_armcap=0

# tmux using unicode by default
alias tmux='tmux -u'

# git related
alias lg='lazygit'
alias gcm='git checkout main 2> /dev/null || git checkout master'
alias gbo="git for-each-ref --sort=committerdate refs/heads/ --format='%(color: red)%(committerdate:short) %(color: cyan)%(refname:short) %(color: blue)[%(upstream:short)]'"
alias gerrit='git review -T'

# Python virtual env
alias pyv='. .venv/bin/activate 2> /dev/null || . venv/bin/activate'

prompt_context() {}

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Starship prompt
eval "$(starship init zsh)"

# OCAML
[[ ! -r /Users/mattclarke/.opam/opam-init/init.zsh ]] || source /Users/mattclarke/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null


# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
