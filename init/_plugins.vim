if has('nvim')
  call plug#begin('~/.config/nvim/plugins')
else
  call plug#begin('~/.vim/plugins')
endif

Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'davidoc/taskpaper.vim'
Plug 'epmatsw/ag.vim'
Plug 'godlygeek/tabular'
Plug 'heavenshell/vim-jsdoc'
Plug 'kien/ctrlp.vim'
Plug 'markcornick/vim-bats'
" Plug 'matthias-guenther/hammer.vim'
Plug 'mileszs/ack.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vividchalk'
Plug 'vim-scripts/vcscommand.vim'
Plug 'vito-c/jq.vim'
Plug 'Townk/vim-autoclose'
Plug 'sheerun/vim-polyglot' " install most major language syntax plugins
Plug 'lepture/vim-jinja'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'christoomey/vim-tmux-navigator'

Plug 'maxbane/vim-asm_ca65'

Plug 'bfontaine/Brewfile.vim'

Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'
Plug 'fcpg/vim-orbital'
Plug 'liuchengxu/space-vim-dark'
Plug 'cseelus/vim-colors-lucid'
Plug 'Rigellute/shades-of-purple.vim'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
endif

call plug#end()

" Install plugins if this is the first run
if has('nvim') && !isdirectory(expand('~/.config/nvim/plugins'))
  PlugInstall
elseif !has('nvim') && !isdirectory(expand('~/.vim/plugins'))
  PlugInstall
endif

