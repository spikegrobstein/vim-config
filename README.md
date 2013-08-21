# vim-config

This is heavily based on the Pivotal `vim-config`. Previously it existed as a fork, but it's not only
diverged incredibly far, but also has different goals, so I broke it into its own repository.

## To Install

(Re)move ~/.vim and ~/.vimrc if you have them already, and run:

    git clone git://github.com/spikegrobstein/vim-config.git ~/.vim
    cd ~/.vim
    git submodule update --init
    ln -s ~/.vim/vimrc ~/.vimrc

## tmux support (optional)

This contains a base `tmux.conf`, but you might want to use your own.

## Compile command-t

    rvm system #ensure build on Ruby 1.8.7 if using RVM
    cd ~/.vim/bundle/command-t
    bundle
    rake make

## Updating

As long as your checkout is kept clean, you can easily update, rebase your local changes and update submodules with:

    cd ~/.vim && git pull --rebase ; git submodule update ; cd -
