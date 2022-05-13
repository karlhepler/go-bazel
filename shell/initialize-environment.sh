# source this file to initialize the environment
# example: `. initialize-environment.sh`

export CACHE="$HOME/.cache/go-bazel"
if [ ! -d "$CACHE" ]; then
    mkdir -p "$CACHE"
fi

export CACHE_BIN="$CACHE/bin"
if [ ! -d "$CACHE_BIN" ]; then
    mkdir -p "$CACHE_BIN"
fi

export GOPATH="$CACHE/go"
export BAZELISK_HOME="$CACHE/bazelisk"
export REPO_ROOT="$(git rev-parse --show-toplevel)"

export PATH="$REPO_ROOT/bin:$CACHE/go/bin:$PATH"
