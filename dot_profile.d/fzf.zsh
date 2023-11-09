# Setup fzf
# ---------
if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
fi

# Auto-completion
# ---------------
local FILE="/opt/homebrew/opt/fzf/shell/completion.zsh"
[ -f "${FILE}" ] && [[ $- == *i* ]] && source "/opt/homebrew/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
local FILE="/opt/homebrew/opt/fzf/shell/key-bindings.zsh"
[ -f "${FILE}" ] && source "/opt/homebrew/opt/fzf/shell/key-bindings.zsh"

