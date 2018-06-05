" Javascript should use tabs to indent
" because of this, we want to not show whitespace characters
" but we still want to highlight trailing whitespace.

"set noexpandtab
" set nolist
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\S\@<=\s\+$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
