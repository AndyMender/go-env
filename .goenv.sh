# This is NOT an executable script. It should be source using:
# `source .goenv.sh`

# record the previous PATHS for later restore
export OLD_PATH="$PATH"
export OLD_GOPATH="$GOPATH"
export OLD_PS1="$PS1"

# set environment variables
activate () {
    export GOPATH=$(pwd)
    export PATH="$GOPATH/bin:$PATH"
    export PS1="(goenv)$PS1"
}

# unset environment variables, restore previous state and clean-up
deactivate () {
    export PATH="$OLD_PATH"
    export GOPATH="$OLD_GOPATH"
    export PS1="$OLD_PS1"

    unset OLD_PATH
    unset OLD_GOPATH
    unset OLD_PS1
    unset -f deactivate
}

# activate while running `source`
activate
