" Turn on Solarized 256 colors if the terminal supports it.
" (Why Solarized doesn't do this properly on its own is unknown.)
if &t_Co == 256
  let g:solarized_termcolors=256
endif

let g:tokyonight_style = "night"

set background=dark
colorscheme tokyonight
highlight colorcolumn guibg=#151122

" specifically for tokyonight: this is that scheme's 'yellow'
" which makes the splits more visible.
highlight VertSplit guifg=#e0af68

" the tab names in the tab bar
" this is the fg_dark value from colors
highlight TabLine guifg=#a9b1d6

let g:neosolarized_italic = 0
