call plug#begin('~/.config/nvim/plugins')

" behaviour plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'airblade/vim-gitgutter'
Plug 'epmatsw/ag.vim'
Plug 'godlygeek/tabular'
Plug 'heavenshell/vim-jsdoc'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/vcscommand.vim'
Plug 'Townk/vim-autoclose'
Plug 'camspiers/lens.vim'

Plug 'drzel/quakec.vim'

Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'


" syntax plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'sheerun/vim-polyglot' " install most major language syntax plugins
Plug 'jparise/vim-graphql'
Plug 'maxbane/vim-asm_ca65'
Plug 'bfontaine/Brewfile.vim'
Plug 'davidoc/taskpaper.vim'
Plug 'markcornick/vim-bats'
Plug 'vito-c/jq.vim'
Plug 'lepture/vim-jinja'


" colorschemes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-vividchalk'
Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'
Plug 'fcpg/vim-orbital'
Plug 'liuchengxu/space-vim-dark'
Plug 'cseelus/vim-colors-lucid'
Plug 'Rigellute/shades-of-purple.vim'

call plug#end()

" Install plugins if this is the first run
if has('nvim') && !isdirectory(expand('~/.config/nvim/plugins'))
  PlugInstall
elseif !has('nvim') && !isdirectory(expand('~/.vim/plugins'))
  PlugInstall
endif

