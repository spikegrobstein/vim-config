vim.g.mapleader = " "
vim.g.maplocalleader = ";"

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal alt_font symbols nerd_font emoji<cr>", opts)

-- Easier split navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- completion (?)
vim.keymap.set("n", "<C-j>", "<")

-- fast scrolling
vim.keymap.set("n", "<C-e>",  "3<C-e>", { noremap = true })
vim.keymap.set("n", "<C-y>",  "3<C-y>", { noremap = true })

-- In command-line mode, <C-A> should go to the front of the line, as in bash.
vim.keymap.set("c", "<C-A>", "<C-B>")

-- Make Y consistent with D and C
vim.keymap.set({"n", "v", "o"}, "Y", "y$")

-- Split screen
vim.keymap.set({"n", "v", "o"}, "<leader>v", ":vsp<CR>")
vim.keymap.set({"n", "v", "o"}, "<leader>-", ":sp<CR>")

-- Create a new tab
vim.keymap.set({"n", "v", "o"}, "<leader>t", ":tabedit<CR>")

-- Close entire tab + all splits
vim.keymap.set({"n", "v", "o"}, "<leader>x", ":tabclose<CR>")

-- Reload .vimrc
vim.keymap.set({"n", "v", "o"}, "<leader>rv", ":source ~/.config/nvim/init.vim<CR>", { silent = true })

-- NOTE: this requires having 'fd' and 'fzf' installed.
-- should also install 'ripgrep' and 'bat'
vim.keymap.set("n", "<silent><leader>f", ":lua require('fzf-lua').files()<CR>", { silent = true})

-- git blame
vim.keymap.set({"n", "v", "o"}, "<leader>gb", ":Git blame<CR>")

-- Comment/uncomment lines with ^/ (vim registers ^/ as <C-_>
vim.keymap.set({"n", "v", "o"}, "<C-_>", "<plug>NERDCommenterToggle")

-- In command-line mode, <C-A> should go to the front of the line, as in bash.
vim.keymap.set("c", "<C-A>", "<C-B>")

-- Copy current file path to system pasteboard
vim.keymap.set({"n", "v", "o"}, "<leader>C", ":let @* = expand(\"%\")<CR>:echo \"Copied: \".expand(\"%\")<CR>")
-- map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

-- Movement within 'ins-completion-menu'
vim.keymap.set("i", "<expr><C-j>", "pumvisible() ? \"<C-n>\" : \"<C-j>\"")
vim.keymap.set("i", "imap <expr><C-k>", "pumvisible() ? \"<C-p>\" : \"<C-k>\"\" \" \"")

-- Disable middle mouse button, F1
-- vim.keymap.set({"n", "v", "o", "i"}, "<MiddleMouse>", "<Nop>")
-- vim.keymap.set({"n", "v", "o", "i"}, "<F1>", "<Nop>")
