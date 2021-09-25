export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
# Add the brew version of clang
#export PATH="/usr/local/opt/llvm/bin:$PATH"
#export CC="/usr/local/opt/llvm/bin/clang"
#export CXX="$CC++"
# Add epics path
export PATH="/opt/epics/base/bin/darwin-x86:$PATH"



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

# Starship prompt
eval "$(starship init bash)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/mattclarke/.sdkman"
[[ -s "/Users/mattclarke/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/mattclarke/.sdkman/bin/sdkman-init.sh"
