# Setup fzf
# ---------
if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
fi

# Auto-completion
# ---------------
local FILE="/opt/homebrew/opt/fzf/shell/completion.bash"
[ -f "${FILE}" ] && [[ $- == *i* ]] && source "/opt/homebrew/opt/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
local FILE="/opt/homebrew/opt/fzf/shell/key-bindings.bash"
[ -f "${FILE}" ] && source "/opt/homebrew/opt/fzf/shell/key-bindings.bash"

