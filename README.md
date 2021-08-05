# vim-config

This was heavily based on `pivotalcommon/vim-config`. Previously it existed as a fork, but it's not only
diverged incredibly far, but also has different goals, so I broke it into its own repository.

This uses [vim-plug](https://github.com/junegunn/vim-plug) to manage plugins, and will attempt to install them
by default on the first launch. It does this by checking for the existence of the `plugins` directory in your
vim config directory.

This repository *only support neovim* on Linux, OSX and \*BSD.

## To Install (neovim)

    mkdir -p ~/.config
    git clone https://github.com/spikegrobstein/vim-config.git ~/.config/nvim

Then, run:

    nvim +PlugInstall +PlugUpdate +qa

Then start up `nvim`

## Updating (neovim)

Updating is relatively straightforward:

    cd ~/.config/nvim
    git pull --rebase
    nvim +PlugInstall +PlugUpdate +qa

## Coc

This repo uses `coc.vim`. make sure you have nodeJS set up (preferably >=14.x).

You probably want to `:CocInstall` some of the following:

 * `coc-clangd`
 * `coc-css`
 * `coc-docker`
 * `coc-elixir`
 * `coc-html`
 * `coc-json`
 * `coc-rust-analyzer`
 * `coc-sh`
 * `coc-tsserver`

Periodically run `:CocUpdate` to get the latest versions of these plugins.

### FZF support

By default, this vim config will use ctrl-p for fuzzy file opening (via `<leader>f`), however if it detects
that you've got `fzf` installed, it'll use that instead. `fzf` is a much faster fuzzy finder that's written in
go and even has tmux integration.

You can install `fzf` with the following command:

    brew install --head fzf
    # then run the following to install the bash additions:
    /usr/local/opt/fzf/install

if you use `ag`, you can (optionally) add the following line to your `~/.bash_profile` or `~/.zshrc`:

    export FZF_DEFAULT_COMMAND='ag -l --hidden --ignore .git -g ""'

that will use `ag` to list the files and ignore files/directories that are in your `.gitignore` as well as the `.git` directory, but will still list other invisible files.

`ag` can be installed with brew as `the_silver_searcher`.

