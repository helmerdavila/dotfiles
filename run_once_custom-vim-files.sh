echo "Creating ~/.nvimrc and ~/.ovimrc files"

touch ~/.nvimrc && touch ~/.ovimrc

cat <<EOF >~/.nvimrc
set guifont=CodeNewRomanNerdFontCompleteM-:h18
"set guifont=JetBrainsMonoNerdFontCompleteM-Regular:h18
"set guifont=FiraCodeNerdFontCompleteM-Retina:h18

# You can change the following between dark or light
set background=light

" Theme: OneHalfLight (Default | Light theme)
colorscheme onehalflight

" Theme: OneDark (Dark theme)
" let g:onedark_config = { 'style': 'cool' }
" colorscheme onedark

" Theme: Nightfly (Dark Theme)
" colorscheme nightfly

" Replace the theme of vim bar (lualine) 
lua <<END
require('lualine').setup {
  options = { theme = 'onelight' }
}
END

" Share clipboard with system (Mac)
set clipboard=unnamed
EOF

cat <<EOF >~/.ovimrc
set guifont=CodeNewRomanNerdFontCompleteM-:h18
"set guifont=JetBrainsMonoNerdFontCompleteM-Regular:h18
"set guifont=FiraCodeNerdFontCompleteM-Retina:h18

# You can change the following between dark or light
set background=light

" Theme: OneHalfLight (Default | Light theme)
colorscheme onehalflight
let g:airline_theme='onehalflight'

" Theme: papercolor (Light theme)
" set background=light
" colorscheme PaperColor

" Theme: Embark (Dark Theme)
" colorscheme embark

" Theme: Sonokai (Dark Theme)
" let g:sonokai_style = 'atlantis'
" colorscheme sonokai

" Theme: Nightfly (Dark Theme)
" colorscheme nightfly

" Share clipboard with system (Mac)
set clipboard=unnamed
EOF
