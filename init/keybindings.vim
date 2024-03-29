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
nmap <C-h>      <C-w>h
nmap <C-l>      <C-w>l

" YouCompleteMe bindings
nmap <C-j> <

" Create a new tab
map <leader>t   :tabedit<CR>

" Close entire tab + all splits
map <leader>x   :tabclose<CR>

" Reload .vimrc
map <leader>rv  :source ~/.config/nvim/init.vim<CR>

" Fast scrolling
nnoremap <C-e>  3<C-e>
nnoremap <C-y>  3<C-y>

" CtrlP / fzf
if executable("fzf")
  " NOTE: this requires having 'fd' installed.
  " should also install 'ripgrep' and 'bat'
  map <silent><leader>f <cmd>lua require('fzf-lua').files()<CR>
else
  map <silent><leader>f   :CtrlP<CR>
endif

" Git blame
map <leader>gb   :Git blame<CR>

" Comment/uncomment lines with ^/ (vim registers ^/ as <C-_>
map <C-_>   <plug>NERDCommenterToggle

" In command-line mode, <C-A> should go to the front of the line, as in bash.
cmap <C-A> <C-B>

" Copy current file path to system pasteboard
map <leader>C :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
" map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

" Disable middle mouse button, F1
map <MiddleMouse>   <Nop>
imap <MiddleMouse>  <Nop>
map <F1>            <Nop>
imap <F1>           <Nop>

" Movement within 'ins-completion-menu'
imap <expr><C-j>   pumvisible() ? "\<C-n>" : "\<C-j>"
imap <expr><C-k>   pumvisible() ? "\<C-p>" : "\<C-k>"" " "

lua << EOF
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<Leader>I", "<cmd>IconPickerNormal alt_font symbols nerd_font emoji<cr>", opts)

-- keybindings for documentation comments
vim.keymap.set("n", "<Leader>dd", function() require('neogen').generate() end)
vim.keymap.set("n", "<Leader>df", function() require('neogen').generate({ type = "func" }) end)
vim.keymap.set("n", "<Leader>dt", function() require('neogen').generate({ type = "type" }) end)
vim.keymap.set("n", "<Leader>dl", function() require('neogen').generate({ type = "file" }) end)
vim.keymap.set("n", "<Leader>dc", function() require('neogen').generate({ type = "class" }) end)
EOF
