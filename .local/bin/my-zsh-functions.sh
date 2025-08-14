function source_if_exists() {
    if [[ -f "$1" ]]; then
        source "$1"
    fi
}

function path_if_exists() {
    if [[ -d "$1" ]]; then
        export PATH="$1:$PATH"
    fi
}