#! /usr/bin/env bash

##
## Update script for vim-config
##
## Will perform a git pull --rebase to make sure that configs are up to date
## with the primary repo, then execute a command to update all of the plugins
## and update remote plugins
##

set -euo pipefail
IFS=$'\n\t'

e::() {
  local prefix
  local OPTIND OPTARG opt

  while getopts ':p:' opt "$@"; do
    case "$opt" in
      p)
        prefix="$OPTARG" ;;

      \?)
        printf "Invalid option: -$OPTARG\n" >&2
        return 1
        ;;
      :)
        printf "Option requires an argument: -$OPTARG" >&2
        return 1
        ;;
    esac
  done

  shift "$(( OPTIND - 1 ))"

  if [[ -n "$prefix" ]]; then
    prefix="[$prefix] "
  fi

  printf "$prefix%s\n" "$@" >&2
}

e::info() {
  e:: -p 'INFO' "$@"
}

e::error() {
  e:: -p 'ERR' "$@"
}

e::debug() {
  if (( UPDATE_DEBUG )); then
    e:: -p 'DEBUG' "$@"
  fi
}

## Start script:

scriptpath="$( realpath "$0" )"
scriptdir="$( dirname "$scriptpath" )"

pushd "$scriptdir"

if ! git pull --rebase; then
  e::error \
    "Failed to fetch latest changes from git." \
    "See above output for details."
fi

e::info "Updating Plug..."

nvim \
  +PlugUpgrade \
  +qa

e::info "Updating plugins..."

nvim \
  +PlugInstall \
  +PlugUpdate \
  +UpdateRemotePlugins \
  +qa

e::info "Done! Relaunch existing nvim sessions to load these changes."
