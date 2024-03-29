call plug#begin('~/.config/nvim/plugins')

" Treesitter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


" behaviour plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'airblade/vim-gitgutter'
Plug 'epmatsw/ag.vim'
Plug 'godlygeek/tabular'
Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'javascript.jsx','typescript'], 'do': 'make install' }
" Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/vcscommand.vim'
Plug 'Townk/vim-autoclose'
Plug 'camspiers/lens.vim'

Plug 'lukas-reineke/indent-blankline.nvim'

" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" NOTE: this requires having 'fd' installed.
" should also install 'ripgrep' and 'bat'
Plug 'ibhagwan/fzf-lua'
Plug 'vijaymarupudi/nvim-fzf'

Plug 'kyazdani42/nvim-web-devicons'

" Plug 'shime/vim-livedown'

Plug 'stevearc/dressing.nvim'
Plug 'ziontee113/icon-picker.nvim'

Plug 'danymat/neogen'

" for nx integration
" Not really great UX
" Plug 'Equilibris/nx.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'

" syntax plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'sheerun/vim-polyglot' " install most major language syntax plugins
" Plug 'jparise/vim-graphql'
Plug 'maxbane/vim-asm_ca65'
Plug 'bfontaine/Brewfile.vim'
Plug 'davidoc/taskpaper.vim'
Plug 'markcornick/vim-bats'
Plug 'vito-c/jq.vim'
Plug 'lepture/vim-jinja'

Plug 'rust-lang/rust.vim'

Plug 'drzel/quakec.vim'

" colorschemes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'overcache/NeoSolarized'
Plug 'morhetz/gruvbox'

call plug#end()

" Install plugins if this is the first run
if has('nvim') && !isdirectory(expand('~/.config/nvim/plugins'))
  PlugInstall
elseif !has('nvim') && !isdirectory(expand('~/.vim/plugins'))
  PlugInstall
endif

