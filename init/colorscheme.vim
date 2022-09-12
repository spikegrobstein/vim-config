" Turn on Solarized 256 colors if the terminal supports it.
" (Why Solarized doesn't do this properly on its own is unknown.)
if &t_Co == 256
  let g:solarized_termcolors=256
endif

lua << EOF
  -- specifically for tokyonight: this is that scheme's 'yellow'
  -- which makes the splits more visible.
  require("tokyonight").setup({
    dim_inactive = true,
    style = "night",
    on_colors = function(colors)
      colors.border = colors.yellow

      -- these don't seem to work properly
      -- colors.ColorColumn = { bg = "#151122" }
      -- colors.TabLine = { bg = "#a9b1d6" }
    end
  })
EOF

set background=dark
colorscheme tokyonight
highlight colorcolumn guibg=#151122

" the tab names in the tab bar
" this is the fg_dark value from colors
highlight TabLine guifg=#a9b1d6

