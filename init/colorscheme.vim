" Turn on Solarized 256 colors if the terminal supports it.
" (Why Solarized doesn't do this properly on its own is unknown.)
if &t_Co == 256
  let g:solarized_termcolors=256
endif

let g:tokyonight_style = "night"

set background=dark
colorscheme tokyonight
highlight colorcolumn guibg=#151122

let g:neosolarized_italic = 0
