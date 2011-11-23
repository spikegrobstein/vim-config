" SETTINGS """"""""""""""""""""""""""""""""

" Turn on mouse support, even in the terminal.
set mouse=a

"Show whitespace, fullstops for trailing whitespace
set list
if has("gui_running")
  set listchars=trail:·
else
  set listchars=trail:~
endif

"Swapfiles
set swapfile

"Keep swap and backup files somewhere else
set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmp
set backupdir=~/.vim-tmp,~/tmp,/var/tmp,/tmp

"no toolbar
set guioptions-=T

"no gui tab bar
set guioptions-=e

"no scrollbars
set guioptions-=rL

"font
set guifont=Inconsolata:h24

"history size
set history=1024

"incremental search
set incsearch

"no wrapping
set nowrap

"line numbers
set number

"always show statusline
set laststatus=2

"show matching brackets
set showmatch

"tab settings
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab

" Allow backspace to work more flexibly.
set backspace=2

" Add new windows towards the right and bottom.
set splitbelow splitright

" Write all writeable buffers when changing buffers or losing focus.
autocmd BufLeave,FocusLost * silent! wall
set autowriteall

" Let unsaved buffers exist in the background.
set hidden

" Show typed command prefixes while waiting for operator.
set showcmd

" Make command completion act more like bash
set wildmode=list:longest

" Start scrolling when the cursor is within 3 lines of the edge.
set scrolloff=3

" Don't time out during commands.
set notimeout

" Don't prompt for file changes outside MacVim
set autoread

" Highlight current row.
set cursorline

set wildignore+=tmp/**,public/uploads/**,tags,vendor/**,public/images/**

" Turn off ri tooltips that don't work with Ruby 1.9 yet
" http://code.google.com/p/macvim/issues/detail?id=342
if has("gui_running")
  set noballooneval
endif
