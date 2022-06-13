# My Dotfiles

A group of dotfiles for my daily development

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

## Creating a ~/.mvimrc (macOS) or ~/.lvimrc (Linux)

If you install this in a macOS/Linux device, you should create that file. And you can include the next content and modify it according your colorscheme of preference.

```vim
set guifont=CodeNewRomanNerdFontCompleteM-:h18
"set guifont=JetBrainsMonoNerdFontCompleteM-Regular:h18
"set guifont=FiraCodeNerdFontCompleteM-Retina:h18

if has('nvim')
  " Theme: OneDark (Nvim only)
  " let g:onedark_config = { 'style': 'cool' }
  " colorscheme onedark

  " Theme: Nightfly (Dark Theme)
  " colorscheme nightfly

  " Theme: OneHalfLight
  " colorscheme onehalflight
else
  " Theme: papercolor (Light theme)
  " set background=light
  " colorscheme PaperColor

  " Theme: Embark (Dark Theme)
  "colorscheme embark

  " Theme: Sonokai (Dark Theme)
  " let g:sonokai_style = 'atlantis'
  " colorscheme sonokai

  " Theme: Nightfly (Dark Theme)
  " colorscheme nightfly

  " Theme: OneHalfLight
  " colorscheme onehalflight
  " let g:airline_theme='onehalfdark'
endif

" Share clipboard with system (Mac)
set clipboard=unnamed
```
