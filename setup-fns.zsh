
# Checks to see if the formula is installed before trying to install it.
ibrew() {
    if [ -z "$1" ]; then
        >&2 echo "formula not provided"
        return 1
    fi

    needed=()
    for formula in "$@"
    do
        brew list $formula &>/dev/null || needed+=("$formula")
    done

    [[ -z "$array" ]] || brew install $needed
}

# Checks to see if the cask is installed before trying to install it.
ibrew_cask() {
    if [ -z "$1" ]; then
        >&2 echo "formula not provided"
        return 1
    fi

    needed=()
    for formula in "$@"
    do
        brew list --casks $formula &>/dev/null || needed+=("$formula")
    done

    [[ -z "$array" ]] || brew install --casks $needed
}