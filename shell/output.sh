# shellcheck shell=sh

output_newline() {
    >&2 printf '\n'
}

output_error() {
    >&2 printf '\e[31m%s\e[m\n' "$1"
}

output_text() {
    >&2 printf '%s\n' "$1"
}

output_info() {
    >&2 printf '\e[34m%s\e[m\n' "$1"
}

output_warning() {
    >&2 printf '\e[33m%s\e[m\n' "$1"
}

output_success() {
    >&2 printf '\e[32m%s\e[m\n' "$1"
}

output() {
    printf '%s\n' "$1"
}

output_fatal() {
    output_error "$1"
    exit 1
}
