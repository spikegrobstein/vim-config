" First, let's start loading plugins

if has('nvim')
  call plug#begin('~/.config/nvim/plugins')
else
  call plug#begin('~/.vim/plugins')
endif

" Plug 'Casecommons/vim-rails'
Plug 'Peeja/vim-git-pair'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
" Plug 'chriskempson/vim-tomorrow-theme'
Plug 'davidoc/taskpaper.vim'
Plug 'derekwyatt/vim-scala'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'elixir-lang/vim-elixir'
Plug 'elzr/vim-json'
Plug 'epmatsw/ag.vim'
Plug 'evanmiller/nginx-vim-syntax'
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'heavenshell/vim-jsdoc'
Plug 'honza/dockerfile.vim'
Plug 'kana/vim-textobj-user'
" Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
Plug 'markcornick/vim-bats'
" Plug 'matthias-guenther/hammer.vim'
Plug 'mileszs/ack.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'nono/vim-handlebars'
Plug 'pangloss/vim-javascript'
" Plug 'pivotal/tmux-config'
Plug 'plasticboy/vim-markdown'
" Plug 'rodjek/vim-puppet'
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/gundo.vim'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-abolish'
" Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vividchalk'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/molokai'
Plug 'vim-scripts/vcscommand.vim'
Plug 'vito-c/jq.vim'
Plug 'wgibbs/vim-irblack'

if has('nvim')
  Plug 'Shougo/deoplete.nvim'
endif

call plug#end()

" Install plugins if this is the first run
if !isdirectory(expand(g:plug_home))
  PlugInstall
endif

" End loading plugins

" Turn on Solarized 256 colors if the terminal supports it.
" (Why Solarized doesn't do this properly on its own is unknown.)
if &t_Co == 256
  let g:solarized_termcolors=256
endif

set background=dark
colorscheme solarized

set guifont=Menlo:h12
set guioptions-=T               " Remove GUI toolbar
set guioptions-=e               " Use text tab bar, not GUI
set guioptions-=rL              " Remove scrollbars
set visualbell                  " Suppress audio/visual error bell
set notimeout                   " No command timeout
set showcmd                     " Show typed command prefixes while waiting for operator
set mouse=a                     " Use mouse support in XTerm/iTerm.

set expandtab                   " Use soft tabs
set tabstop=2                   " Tab settings
set autoindent
set smarttab                    " Use shiftwidth to tab at line beginning
set shiftwidth=2                " Width of autoindent
set number                      " Line numbers
set nowrap                      " No wrapping
set backspace=indent,eol,start " Let backspace work over anything.
set wildignore+=tags               " Ignore tags when globbing.
set wildignore+=tmp/**             " ...Also tmp files.
set wildignore+=public/uploads/**  " ...Also uploads.
set wildignore+=public/images/**   " ...Also images.
set wildignore+=node_modules    " ...Also node_modules

execute "set colorcolumn=" . join(range(110,335), ',')
" set colorcolumn=110 "draw a vertical bar at 110 columns (110 is a bit wider than 80, but not too wide)

" fzf support (https://github.com/junegunn/fzf)
if executable("fzf")
  if isdirectory("/usr/local/Cellar/fzf/HEAD")
    set rtp+=/usr/local/Cellar/fzf/HEAD
  elseif isdirectory(expand("~/.fzf"))
    let fzfenabled="homedir"
    set rtp+=~/.fzf
  endif
endif

" make extraneous whitespace so, so pretty
set listchars=tab:▸\ ,trail:·,precedes:←,extends:→

if has("gui_running")
  set listchars=trail:·
else
  set listchars=trail:~
endif

set showmatch                   " Show matching brackets
set hidden                      " Allow hidden, unsaved buffers
set splitright                  " Add new windows towards the right
set splitbelow                  " ... and bottom
set wildmode=list:longest       " Bash-like tab completion
set scrolloff=3                 " Scroll when the cursor is 3 lines from edge
set cursorline                  " Highlight current line

" More detailed status line
set statusline=[%n]\ %f\ %m\ %y
set statusline+=%{fugitive#statusline()} " Show git details"
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''} " Show RVM details"
set statusline+=%w              " [Preview]
set statusline+=%=              " Left/right separator
set statusline+=%c,             " Cursor column
set statusline+=%l/%L           " Cursor line/total lines
set statusline+=\ %P            " Percent through file

set laststatus=2                " Always show statusline

set incsearch                   " Incremental search
set history=1024                " History size
set smartcase                   " Smart case-sensitivity when searching (overrides ignorecase)

set autoread                    " No prompt for file changes outside Vim

set swapfile                    " Keep swapfiles
set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmp
set backupdir=~/.vim-tmp,~/tmp,/var/tmp,/tmp

set hls                         " search with highlights by default
" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

" Write all writeable buffers when changing buffers or losing focus.
" set autowriteall                " Save when doing various buffer-switching things.
" autocmd BufLeave,FocusLost * silent! wall  " Save anytime we leave a buffer or MacVim loses focus.

let g:gitgutter_enabled = 0

" use escape to cancel command-t
let g:CommandTCancelMap=['<ESC>','<C-c>']

" Turn off ri tooltips that don't work with Ruby 1.9 yet
" http://code.google.com/p/macvim/issues/detail?id=342
if has("gui_running")
  set noballooneval
endif

if has('mouse_sgr')
    set ttymouse=sgr
endif

" filetype specific options
" for go, perl, make, use 4-space real tabs
au FileType go,perl,make setl tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab nolist

" Indentation guides configuration
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black   ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgray ctermbg=235

" disable concealing of quotes in json files
let g:vim_json_syntax_conceal = 0

" ensure that freshly opened markdown files are not folded
let g:vim_markdown_folding_disabled = 1

" deoplete
let g:deoplete#enable_at_startup = 1



