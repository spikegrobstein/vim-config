if has('nvim')
  call plug#begin('~/.config/nvim/plugins')
else
  call plug#begin('~/.vim/plugins')
endif

Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'davidoc/taskpaper.vim'
Plug 'derekwyatt/vim-scala'
Plug 'elixir-lang/vim-elixir'
Plug 'elzr/vim-json'
Plug 'epmatsw/ag.vim'
Plug 'evanmiller/nginx-vim-syntax'
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'heavenshell/vim-jsdoc'
Plug 'honza/dockerfile.vim'
Plug 'kien/ctrlp.vim'
Plug 'markcornick/vim-bats'
" Plug 'matthias-guenther/hammer.vim'
Plug 'mileszs/ack.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nono/vim-handlebars'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vividchalk'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/vcscommand.vim'
Plug 'vito-c/jq.vim'
Plug 'Townk/vim-autoclose'

if has('nvim')
  Plug 'Shougo/deoplete.nvim'
endif

call plug#end()

" Install plugins if this is the first run
if has('nvim') && !isdirectory(expand('~/.config/nvim/plugins'))
  PlugInstall
elseif !has('nvim') && !isdirectory(expand('~/.vim/plugins'))
  PlugInstall
endif

