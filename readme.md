# My Dotfiles

A group of dotfiles for my daily development

## Requeriments

### macOS

- Brew

## Steps

### Get chezmoi and install this config

```bash
sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply helmerdavila
```

## What's installing?

### Tools

- Chezmoi
- Zsh
- Oh my zsh
- Vim plug
- `~/.vimrc` file
- `~/.ideavimrc` file (used for Jetbrains)
- `~/.p10k.zsh` file
- `~/.tmux.conf` file
- `~/.config/alacritty/alacritty.yml` file

### Extras

- Exa
- NVM
- Alacritty
- Ripgrep
- Bat
- Zplug

### Commands

- `zshinstall`: Install all "Extra" dependencies
- `zshupdate`: Update all "Extra" dependencies
- `zsh_alacritty_install`: Install alacritty

## Creating an ~/.nvimrc (Custom Neovim) and ~/.ovimrc (Custom Original Vim)

Chezmoi will create both files when you start it the first time. Make sure the content is nearly similar to the next file contents

### ~/.nvimrc

```vim
set guifont=CodeNewRomanNerdFontCompleteM-:h18
"set guifont=JetBrainsMonoNerdFontCompleteM-Regular:h18
"set guifont=FiraCodeNerdFontCompleteM-Retina:h18

" You can change the following between dark or light
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
```

### ~/.ovimrc

```vim
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
```
