" toggle hints for rust
nnoremap <buffer> <F3> :CocCommand rust-analyzer.toggleInlayHints<CR>

" open documentation for the item that the cursor is over
nnoremap <buffer> <F4> :CocCommand rust-analyzer.openDocs<CR>

" reload rust-analyzer so it re-parses things.
nnoremap <buffer> <F5> :CocCommand rust-analyzer.reload<CR>

