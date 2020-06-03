# vim-config

This was heavily based on `pivotalcommon/vim-config`. Previously it existed as a fork, but it's not only
diverged incredibly far, but also has different goals, so I broke it into its own repository.

This uses [vim-plug](https://github.com/junegunn/vim-plug) to manage plugins, and will attempt to install them
by default on the first launch. It does this by checking for the existence of the `plugins` directory in your
vim config directory.

This repository also attempts to support both vim and neovim on Linux, OSX and \*BSD.

## To Install (neovim)

    mkdir -p ~/.config
    git clone https://github.com/spikegrobstein/vim-config.git ~/.config/nvim

Then, start up `nvim`. Then run:

    :UpdateRemotePlugins

This will ensure that deoplete is configured. Quit and re-launch `nvim`.

## To Install (vim)

(Re)move ~/.vim and ~/.vimrc if you have them already, and run:

    git clone https://github.com/spikegrobstein/vim-config.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc

Then start up `vim` and you're good to go. (there does appear to be some issues with vim compatibility at this time)

## Updating (neovim)

Updating is relatively straightforward:

    cd ~/.config/nvim
    git pull --rebase

Then launch `nvim` and run `PlugInstall`.

## Updating (vim)

Updating is relatively straightforward:

    cd ~/.vim
    git pull --rebase

Then launch `vim` and run `PlugInstall`.

### FZF support

By default, this vim config will use ctrl-p for fuzzy file opening (via `<leader>f`), however if it detects
that you've got `fzf` installed, it'll use that instead. `fzf` is a much faster fuzzy finder that's written in
go and even has tmux integration.

You can install `fzf` with the following command:

    brew install --head fzf
    # then run the following to install the bash additions:
    /usr/local/opt/fzf/install

if you use `ag`, you can (optionally) add the following line to your `~/.bash_profile`:

    export FZF_DEFAULT_COMMAND='ag -l --hidden --ignore .git -g ""'

that will use `ag` to list the files and ignore files/directories that are in your `.gitignore` as well as the `.git` directory, but will still list other invisible files.

`ag` can be installed with brew as `the_silver_searcher`.

