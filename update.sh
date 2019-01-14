#! /usr/bin/env bash

##
## Update script for vim-config
##
## Will perform a git pull --rebase to make sure that configs are up to date
## with the primary repo, then execute a command to update all of the plugins
## and update remote plugins
##
## Usage:
##
## ./update.sh [ <vim-cmd> ]
##
## <vim-cmd> is used when calling out to vim to update plugins.
##           it defaults to 'nvim', so if you're using 'vim' or some other
##           name for your vim executable, include that here or set VIM_CMD
##           environment variable to override the default.

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

# get the vim command that we're gonna use
default_vim="${VIM_CMD:-nvim}"
vim="${1:-"$default_vim"}"

scriptpath="$( realpath "$0" )"
scriptdir="$( dirname "$scriptpath" )"

pushd "$scriptdir"

e::info "Using '$vim' as vim command."

if ! git pull --rebase; then
  e::error \
    "Failed to fetch latest changes from git." \
    "See above output for details."
fi

e::info "Updating Plug..."

"$vim" \
  +PlugUpgrade \
  +qa

e::info "Updating plugins..."

"$vim" \
  +PlugInstall \
  +PlugUpdate \
  +UpdateRemotePlugins \
  +qa

e::info "Done! Relaunch existing nvim sessions to load these changes."
