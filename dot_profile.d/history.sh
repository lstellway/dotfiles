history_clear() {
  [ -f ~/.bash_history ] && cat /dev/null > ~/.bash_history
  history -wc
}
