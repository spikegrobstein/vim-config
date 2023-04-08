" toggle hints for rust
nnoremap <buffer> <F3> :CocCommand rust-analyzer.toggleInlayHints<CR>

" open documentation for the item that the cursor is over
nnoremap <buffer> <F4> :CocCommand rust-analyzer.openDocs<CR>

" reload rust-analyzer so it re-parses things.
nnoremap <buffer> <F5> :CocCommand rust-analyzer.reload<CR>

" show code-action menu
nnoremap <buffer> <F6> <Plug>(coc-codeaction-cursor)<CR>

" run rust fmt on the document.
nnoremap <buffer> <F8> :CocCommand editor.action.formatDocument<CR>

" use rust-gdb for debugging
packadd termdebug
let termdebugger="rust-gdb"

