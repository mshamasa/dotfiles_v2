# ------------------------------
# ⚡ Powerlevel10k Instant Prompt
# Must stay near top
# ------------------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ------------------------------
# 🧬 Antigen Plugin Manager
# ------------------------------
source $HOME/antigen.zsh

# Let Antigen manage Oh My Zsh
antigen use oh-my-zsh

# Default OMZ plugins
antigen bundle git
antigen bundle command-not-found

# Extra plugins
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Theme
antigen theme romkatv/powerlevel10k

antigen apply

# ------------------------------
# 🐍 Conda / Mamba (leave as-is)
# ------------------------------
# >>> conda initialize >>>
__conda_setup="$('/Users/ms/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ms/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/ms/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ms/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# >>> mamba initialize >>>
export MAMBA_EXE='/Users/ms/miniforge3/bin/mamba'
export MAMBA_ROOT_PREFIX='/Users/ms/miniforge3'
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias mamba="$MAMBA_EXE"
fi
unset __mamba_setup
# <<< mamba initialize <<<

# ------------------------------
# 🎨 Powerlevel10k Config
# ------------------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

