for f in ~/.zshrc.ya ~/.zshrc.local; do [ ! -f "$f" ] || source "$f"; done
