" SHORTCUT KEY MAPPINGS """""""""""""""""""

" Rayban & Peter
let mapleader = ","

"prev/next in quickfix file listing (e.g. search results)
map <M-D-Down> :cn<CR>
map <M-D-Up> :cp<CR>

"opt-cmd-arrows [next & previous open files]
map <M-D-Left> :bp<CR>
map <M-D-Right> :bn<CR>

"indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

"Undo/Redo using undo tree with cmd-z/cmd-shift-z
map <D-z> :earlier 1<CR>
map <D-Z> :later 1<CR>

" File tree browser - backslash
map \ :NERDTreeToggle<CR>

" File tree browser showing current file - pipe (shift-backslash)
map \| :NERDTreeFind<CR>

" FuzzyFinder and switchback commands
map <leader>e :e#<CR>
map <leader>b :FufBuffer<CR>
map <leader>f <Plug>PeepOpen
map <leader><C-N> :FufFile **/<CR>
map <D-e> :FufBuffer<CR>
map <leader>n :FufFile **/<CR>
map <D-N> :FufFile **/<CR>

" search
nmap <leader>s :%s/
vmap <leader>s :s/

" Split screen vertically and move between screens.
map <leader>v :vsp<CR>
map <leader>w ^Ww
map <leader>= ^W=

" Move between horizontally split screens.
map <leader>j ^Wj
map <leader>k ^Wk

" reload .vimrc
map <leader>rv :source ~/.vimrc<CR>

" refresh the FuzzyFinder cache
map <leader>rf :FufRenewCache<CR>

" ctags with rails load path
map <leader>t :!rails runner 'puts $LOAD_PATH.join(" ")' \| xargs /usr/local/bin/ctags -R public/javascripts<CR>
map <leader>T :!rails runner 'puts $LOAD_PATH.join(" ")' \| xargs rdoc -f tags<CR>

" git blame
map <leader>g :Gblame<CR>

" F7 reformats the whole file and leaves you where you were (unlike gg)
map <silent> <F7> mzgg=G'z :delmarks z<CR>:echo "Reformatted."<CR>

" Run test at cursor
map <leader><D-R> :w<CR>:RunFocusedTest<CR>
" Run all tests in file
map <leader><D-r> :w<CR>:RunTests<CR>

" Open .vimrc file.  (Think Cmd-, [Preferences...] but with Shift.)
map <D-<> :tabedit ~/.vimrc<CR>

" In command-line mode, <C-A> should go to the front of the line, as in bash.
cmap <C-A> <C-B>

" Scroll faster.
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Copy current file path to system pasteboard.
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

" Disable middle mouse button (which is easy to hit by accident).
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>

" Make Y consistent with D and C.
map Y y$

" Turn off <F1>
map <F1> <Nop>
imap <F1> <Nop>

" Easy access to the shell.
map <Leader><Leader> :!

