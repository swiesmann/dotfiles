function debug() {
    if [[ "$MY_ZSH_FUNCTIONS_DEBUG" == "true" ]]; then
        echo "$(date) ${funcstack[-1]} $@" >> /tmp/my-zsh-functions-debug.log
    fi
}

function source_if_exists() {
    if [[ -f "$1" ]]; then
        debug "sourcing $1"
        source "$1"
    else
        debug "file does not exist: $1"
    fi

}

function path_if_exists() {
    if [[ -d "$1" ]]; then
        debug "adding to PATH: $1"
        export PATH="$1:$PATH"
    else
        debug "folder does not exist: $1"
    fi
}