noremap <buffer> <F4> :CocCommand tsserver.goToSourceDefinition<CR>
noremap <buffer> <F5> :CocCommand tsserver.restart<CR>

" autofix
nnoremap <buffer> <F6> :CocCommand eslint.executeAutofix<CR>

