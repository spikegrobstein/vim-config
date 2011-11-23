"strip trailing whitespace on save for code files
function! StripTrailingWhitespace()
  let save_cursor = getpos(".")
  %s/\s\+$//e
  call setpos('.', save_cursor)
endfunction
"cocoa
autocmd BufWritePre *.m,*.h,*.c,*.mm,*.cpp,*.hpp call StripTrailingWhitespace()
"rails
autocmd BufWritePre *.rb,*.yml,*.js,*.css,*.less,*.sass,*.scss,*.html,*.xml,*.erb,*.haml call StripTrailingWhitespace()
"misc
autocmd BufWritePre *.java,*.php,*.feature call StripTrailingWhitespace()

"highlight JSON files as javascript
autocmd BufRead,BufNewFile *.json set filetype=javascript

"highlight jasmine_fixture files as HTML
autocmd BufRead,BufNewFile *.jasmine_fixture set filetype=html

" set question mark to be part of a VIM word. in Ruby it is!
autocmd FileType ruby set iskeyword=@,48-57,_,?,!,192-255
autocmd FileType scss set iskeyword=@,48-57,_,-,?,!,192-255

" Insert ' => '
autocmd FileType ruby imap  <Space>=><Space>

" Open all folds in Markdown.
autocmd FileType mkd normal zR

