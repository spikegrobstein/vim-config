" Keybindings
" -----------

let mapleader = " "
let maplocalleader = ";"

if has("nvim")
  nmap <BS> <C-W>h
endif

" Make Y consistent with D and C
map Y           y$

" Split screen
map <leader>v   :vsp<CR>
map <leader>-   :sp<CR>

" Easier split navigation
" nmap <C-j>      <C-w>j
" nmap <C-k>      <C-w>k
nmap <C-h>      <C-w>h
nmap <C-l>      <C-w>l
" map <leader>=   <C-w>=

" YouCompleteMe bindings
nmap <C-j> <

" Create a new tab
map <leader>t   :tabedit<CR>
nmap <C-t>      :tabedit<CR>

map <leader>x   :tabclose<CR>
map <C-x>   :tabclose<CR>

" Open .vimrc file in new tab. Think Command + , [Preferences...] but with Shift.
map <D-<>       :tabedit ~/.config/nvim/init.vim<CR>

" Reload .vimrc
map <leader>rv  :source ~/.config/nvim/init.vim<CR>

" Undo/redo - Doesn't MacVim already have this?
map <D-z>       :earlier 1<CR>
map <D-Z>       :later 1<CR>

" Auto-indent whole file
" nmap <leader>=  gg=G``
map <silent> <F7> gg=G``:echo "Reformatted."<CR>

" Jump to a new line in insert mode
imap <D-CR>     <Esc>o

" Fast scrolling
nnoremap <C-e>  3<C-e>
nnoremap <C-y>  3<C-y>

" Previous/next quickfix file listings (e.g. search results)
map <M-D-Down>  :cn<CR>
map <M-D-Up>    :cp<CR>

" Previous/next buffers
map <M-D-Left>  :bp<CR>
map <M-D-Right> :bn<CR>

" refresh the FuzzyFinder cache
map <leader>rf :FufRenewCache<CR>

" CtrlP / fzf
if executable("fzf")
  map <silent><leader>f  :FZF -x<CR>
else
  map <silent><leader>f   :CtrlP<CR>
endif

" Git blame
map <leader>gb   :Gblame<CR>

" Comment/uncomment lines with ^/ (vim registers ^/ as <C-_>
map <C-_>   <plug>NERDCommenterToggle

" In command-line mode, <C-A> should go to the front of the line, as in bash.
cmap <C-A> <C-B>

" Copy current file path to system pasteboard
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

" Disable middle mouse button, F1
map <MiddleMouse>   <Nop>
imap <MiddleMouse>  <Nop>
map <F1>            <Nop>
imap <F1>           <Nop>

" Easy access to the shell
map <Leader><Leader> :!

" AckGrep current word
map <leader>a :call AckGrep()<CR>
" AckVisual current selection
vmap <leader>a :call AckVisual()<CR>

" Recalculate diff when it gets messed up.
nmap du :diffupdate<CR>

" Gundo.vim
map <leader>u :GundoToggle<CR>

" paste toggling.
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
map <leader>p :set invpaste paste?<CR>

" Movement within 'ins-completion-menu'
imap <expr><C-j>   pumvisible() ? "\<C-n>" : "\<C-j>"
imap <expr><C-k>   pumvisible() ? "\<C-p>" : "\<C-k>"" " "

