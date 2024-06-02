# My Dotfiles

A group of dotfiles for my daily development

## Requeriments

### macOS

- Version: Ventura or greater

You need to install Homebrew and Chezmoi first

#### Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### Install chezmoi

```bash
brew install chezmoi
```

### Ubuntu

- Version: 22.04 or greater

### Fedora

- Version: 38 or greater

## Steps

### Get chezmoi (except for macOS, use Brew) and install this config

```bash
sh -c "$(curl -fsLS chezmoi.io/get)" -- init --ssh --apply helmerdavila
```

```bash
# Only for macOS
chezmoi init --ssh --apply helmerdavila
```

## What's installing?

### Tools

- Chezmoi
- Zsh
- Oh my zsh
- Vim plug
- `~/.vimrc` file
- `~/.ideavimrc` file (used for Jetbrains)
- `~/.tmux.conf` file
- `~/.config/alacritty/alacritty.yml` file

### Extras

- Exa
- NVM
- Alacritty
- Ripgrep
- Bat

## Creating an ~/.nvimrc (Custom Neovim) and ~/.ovimrc (Custom Original Vim)

Chezmoi will create the file when you start it the first time. Make sure the content is nearly similar to the next file contents

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

## Vim Shortcuts (Neovim, Vscode, Jetbrains)

| Shortcut | Description | Use in mode |
| --- | --- | --- |
| `j + j` | Exit from insert mode | Insert |
| `<leader> + -` | Split window horizontally | Normal |
| `<leader> + \|` | Split window vertically | Normal |
| `<C-k>` | Move to the window above | Normal |
| `<C-j>` | Move to the window below | Normal |
| `<C-h>` | Move to the window on the left | Normal |
| `<C-l>` | Move to the window on the right | Normal |
| `<leader> + <tab> + x` | Tab: Close | Normal |
| `<leader> + q + q` | Window: Close | Normal |
| `<leader> + :` | Execute / Search Command | Normal |
| `<C-[>` | Font Size: Decrease | Normal |
| `<C-]>` | Font Size: Increase | Normal |
| `<leader> + g + g` | Git: Focus | Normal |
| `<leader> + u + L` | Toggle relative line numbers | Normal |
| `<leader> + u + w` | Toggle wrap | Normal |
| `<leader> + z` | Toggle Zen mode | Normal |
| `[ + b` | Move to the previous tab / buffer | Normal |
| `] + b` | Move to the next tab / buffer | Normal |
| `H` | Move to the previous tab / buffer | Normal |
| `L` | Move to the next tab / buffer | Normal |
| `<leader> + f + f` | Search file | Normal |
| `<leader> + ,` | Recent files | Normal |
| `<leader> + /` | Search everywhere (Text) | Normal |
| `<leader> + w` | Save the file | Normal |
| `<leader> + W` | Save: No format (Vscode) | Normal |
| `<leader> + s + S` | Go to symbol (Workspace) | Normal |
| `<leader> + c + f` | Reformat the file | Normal |
| `<leader> + c + r` | Rename element | Normal |
| `<leader> + m + m` | Toggle bookmark: Jetbrains, Vscode (plugin) | Normal |
| `g + z + d` | Surround: Delete | Normal |
| `g + z + r` | Surround: Change / Replace | Normal |
| `g + z + a` | Surround: Add | Normal / Visual |
| `<leader> + s + b` | Search in File | Normal |
| `<leader> + s + s` | Go to symbol (File) | Normal |
| `<leader> + s + m` | Go to bookmark: Jetbrains, Vscode (plugin) | Normal |
| `[ + e` | Move to the previous error | Normal |
| `] + e` | Move to the next error | Normal |
| `s + 2 letters` | Move to next word beginning with | Normal |
| `S + 2 letters` | Move to previous word beginning with | Normal |
| `<leader> + e` | Toggle File Explorer | Normal |
| `<leader> + f + t` | Terminal: Open | Normal |