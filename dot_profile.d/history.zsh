history_clear() {
  [ -f "~/.zsh_history" ] && cat /dev/null > ~/.zsh_history
  history -p
}
