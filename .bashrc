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

# VISUAL STUDIO CODE
vscode () {
	VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*
}

# MISC
dircontents() {
    find . -maxdepth 1 -exec du -sh {} +
}

### JAVA ###

# https://jdk.java.net/21/

java21() {
   unset JAVA_HOME
   export JAVA_HOME=$(/usr/libexec/java_home -v 21)
   java -version
}

### ALIASES ###

alias gradlew="./gradlew $@"
alias mvnw="./mvnw $@"

alias cls="clear"

### PYENV ###

# Pyenv - https://github.com/pyenv/pyenv#homebrew-in-macos
export PYENV_ROOT="$HOME/.pyenv"

pathprepend $PYENV_ROOT

eval "$(pyenv init -)"

# refresh other configs
find $HOME -maxdepth 1 -name ".*_rc.sh" -exec bash '{}' +

for f in $HOME/.*_rc.sh; do source $f; done
unset f
