> [!WARNING]  
> Unmaintained repository. Since I switched to NixOS, i no longer update my dotfiles in this repository.

# Dotfiles
I manage my dotfiles using [stow](https://www.gnu.org/software/stow/).
> Note: This repo is not perfect, it probably won't "just work", you might have to debug certain things yourself (e.g. install dependencies).

## Requirements (not up to date)
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
The neovim config is ~80% done. It still lacks certain features, that I would like to implement, but in my opinion it good enough to use it
as a daily driver. 

### Plugins
- [`bdelete.nvim`](https://github.com/famiu/bufdelete.nvim) - Helper for deleting buffers, without messing up the layout.
- [`catppuccin`](https://github.com/catppuccin/nvim) - Colorscheme.
- [`nvim-cmp`](https://github.com/hrsh7th/nvim-cmp) - Completion plugin.
- [`nvim-colorizer`](https://github.com/norcalli/nvim-colorizer.lua) - Change background of color values to their color.
- [`comment.nvim`](https://github.com/numToStr/Comment.nvim) - Plugin for smart commenting (Not implemented in 100%, need to add TS support).
- [`flash.nvim`](https://github.com/folke/flash.nvim) - Plugin that improves the search functionality in neovim.

### Missing features / bugs
- 

## zsh
I use `oh-my-zsh` with some additional plugins like:
- `zsh-autosuggestions`
- `zsh-syntax-highlighting`
