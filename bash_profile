export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
# Add the brew version of clang
export PATH="/usr/local/opt/llvm/bin:$PATH"
export CC="/usr/local/opt/llvm/bin/clang"
export CXX="$CC++"
# Add epics path
export PATH="/opt/epics/base/bin/darwin-x86:$PATH"

# Powerline
export PATH="$HOME/Library/Python/3.7/bin:$PATH"
. ~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mattclarke/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mattclarke/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/mattclarke/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mattclarke/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$HOME/.cargo/bin:$PATH"
