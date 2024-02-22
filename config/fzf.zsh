# Setup fzf
# ---------
if [[ ! "$PATH" == */opt/homebrew/bin/fzf* ]]; then
  export PATH="$PATH:/opt/homebrew/bin/fzf"
fi

export FZF_DEFAULT_OPTS='--layout=reverse --height=20 --border'

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/opt/homebrew/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/opt/homebrew/opt/fzf/shell/key-bindings.zsh"

# FZF + Ag
if [ -e /usr/local/bin/ag ]; then
  export FZF_DEFAULT_COMMAND='ag --hidden -g "" -U --ignore .git'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
fi
