load_language_changer_file() {
  if [ -n "${HOMEBREW_PREFIX+set}" ]; then
    if [ -f "$HOMEBREW_PREFIX/opt/$1/share/$1/$2.sh" ]; then
      source "$HOMEBREW_PREFIX/opt/$1/share/$1/$2.sh"
    fi
  elif [ -f "/usr/local/share/$1/$2.sh" ]; then
      source "/usr/local/share/$1/$2.sh"
  fi
}

load_chruby() {
  load_language_changer_file "chruby" "chruby"
  load_language_changer_file "chruby" "auto"
}

load_chnode() {
  load_language_changer_file "chnode" "chnode"
  load_language_changer_file "chnode" "auto"
}

load_chruby
load_chnode

precmd_functions+=(chruby_auto chnode_auto)
