# NeoVim Configurations

NeoVim written in lua config files 

## Dotfiles

> Window 10 only

## Requirements

> Install in order

- [Windows Terminal Preview](https://github.com/microsoft/terminal)
- [Powershell 7.+](https://github.com/)
- [PSReadLine](https://github.com/PowerShell/PSReadLine)
- [Scoop](https://scoop.sh/)

## Setup

1. Install scoop:
```ps1
iwr -useb get.scoop.sh | iex
scoop bucket add main
scoop install git
scoop bucket add extras
scoop bucket add versions
scoop update
```

2. Clone my [dotfiles](https://github.com/matearg/dotfiles)

3. Copy in your `$PROFILE` (Windows Only)

```ps1
. $env:USERPROFILE\github\dotfiles\powershell\user_profile.ps1
$ENV:STARSHIP_CONFIG = "$HOME\github\dotfiles\powershell\starship-themes\mvp.toml"
```
4. Exit and reopen your terminal and install dependencies:

```ps1
scoop install 7zip bat clangd cmake coreutils dark delta fd gcc lazygit less lua luarocks make neovim-nightly ninja nodejs notepadplusplus oh-my-posh posh-git powertoys python ripgrep rust starship sudo taskbarx terminal-icons windows-terminal z zeal
```
> Follow all the NOTES sections after the installs

> For neovim:

```ps1
cd ~/AppData/Local
git clone https://github.com/matearg/nvim.git
```

9. Open neovim and wait until your plugins get installed. Close nvim

10. Reopen nvim and check if your lsp servers are installed `:LspInfo`
> If not run

```
LspInstall clangd html jsonls powershell_es pyright rust_analyzer sumneko_lua tsserver yamlls vimls
```

Run `. $PROFILE` in the terminal to reload your powershell profile

## Optional alacritty installation:

```ps1
mkdir ~/AppData/Roaming/alacritty
ni ~/AppData/Roaming/alacritty/alacritty.yml
cd ~/AppData/Roaming/alacritty
```

> Put in alacritty.yml:

```yml
import:
  - ~/github/dotfiles/alacritty.yml
```
> Run and follow the instructions:

```ps1
cargo install alacritty
npm i -g alacritty-themes
```

### TODO

- Create the repository for GNU
