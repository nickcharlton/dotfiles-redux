load_zsh_plugin() {
  if [ -n "${HOMEBREW_PREFIX+set}" ]; then
    if [ -f "$HOMEBREW_PREFIX/share/$1/$1.zsh" ]; then
      source "$HOMEBREW_PREFIX/share/$1/$1.zsh"
    fi
  elif [ -f "/usr/share/$1/$1" ]; then
      source "/usr/share/$1/$1.zsh"
  fi
}

load_zsh_plugin "zsh-syntax-highlighting"
load_zsh_plugin "zsh-autosuggestions"
