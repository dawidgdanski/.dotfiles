# PATH
pathappend() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

pathprepend() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="$1${PATH:+":$PATH"}"
    fi
}

# CHROME
chrome() {
	open -a "Google Chrome" "$@"
}

# MISC
dircontents() {
    find . -maxdepth 1 -exec du -sh {} +
}

# Pyenv - https://github.com/pyenv/pyenv#homebrew-in-macos
export PYENV_ROOT="$HOME/.pyenv"

pathprepend $PYENV_ROOT

eval "$(pyenv init -)"

# refresh other configs
find $HOME -maxdepth 1 -name ".*_rc.sh" -exec bash '{}' +

for f in $HOME/.*_rc.sh; do source $f; done
unset f