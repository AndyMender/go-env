# go-env
A simple Shell script to activate or deactivate Go ENV variables, such as `GOPATH`

# What this project is?
A non-nonsense way of pointing `GOPATH` to your current project's working directory so that `go get` doesn't try to pollute your user's default go directory at `$HOME/go`. It was inspired by the venerable `venv` Python package, but has less bells and no whistles.

The `activate` function is run automatically and it sets both `GOPATH` and adjusts the `PS1` prompt variable so that you know your Shell environment has been altered. `deactivate` resets all changed ENV variables to their previous values and executes the clean-up procedure, using `unset`.

# What this project is _not_?
Something more elaborate like [goenv by Anton Antonov](https://github.com/syndbg/goenv) or [goenv by Chris Smith](https://github.com/crsmithdev/goenv). Why? Because these projects have a much broader scope, but are slightly more challenging to set up.

# Requirements
- A system installation of Go binaries (any version) accessible to the user via correct `PATH` settings

# Usage
1. Place the `.goenv.sh` file in your project's working/root directory.
2. Source the file running `source .goenv.sh` or `. .goenv.sh`, depending on your Shell and personal preferences.
3. Enjoy an uninterrupted Go experience ;).
4. When you're done, but don't want to terminate the currently running Shell session, call the `deactivate` function.
