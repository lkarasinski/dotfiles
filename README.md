# Dotfiles
I manage my dotfiles using [stow](https://www.gnu.org/software/stow/).

## Requirements
To use my dotfiles make sure that you:
- Have zsh to execute the install script
- Have stow to create symlinks
- Have [lazygit](https://github.com/jesseduffield/lazygit) installed
- Have [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) installed
- Have [ripgrep](https://github.com/BurntSushi/ripgrep) installed
- Have [tpm](https://github.com/tmux-plugins/tpm) in `~/.tmux-plugins/` (`git clone https://github.com/tmux-plugins/tpm ~/.tmux-plugins/tpm`)

## Usage
Run `install` script using zsh
```zsh
zsh ./install
```
Install tmux plugins with `C-a` + `I`

# Configs

## neovim
My neovim config was recently created and is still in the "testing" phase.
The plugins might change, as well as keymaps and all the other stuff.
So far i find the config good enough to use, and I'm using it at work.


### Features
- Autoformatting using lsp-config
- Buffer management using bufferline and bdelete
- Comment tool with support for tree-sitter
- Lazygit git gui
- neo-tree file tree
- File and word fuzzy finding with telescope 
- Undotree and persistent undos
- Easy lsp installation with Mason

## zsh
I use `oh-my-zsh` with some additional plugins like:
- `zsh-autosuggestions`
- `zsh-syntax-highlighting`
