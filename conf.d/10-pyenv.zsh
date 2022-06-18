if which pyenv >/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
    export PATH="$(pyenv root)/shims:$PATH"
fi
