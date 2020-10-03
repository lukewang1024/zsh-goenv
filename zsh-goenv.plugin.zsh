GITHUB="https://github.com"

[[ -z "$GOENV_HOME" ]] && export GOENV_HOME="$HOME/.goenv"

_zsh_goenv_load() {
    # export PATH
    export GOENV_ROOT="$HOME/.goenv"
    export PATH="$GOENV_HOME/bin:$PATH"
    eval "$(goenv init -)"
}

# load goenv if it is installed
if [[ -f "$GOENV_HOME/libexec/goenv" ]]; then
    _zsh_goenv_load
fi
