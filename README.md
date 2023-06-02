# Dotfiles
I manage my dotfiles using [stow](https://www.gnu.org/software/stow/).

## Requirements
To use my dotfiles make sure that you:
- Have zsh to execute the install script
- Have stow to create symlinks
- Have [lazygit](https://github.com/jesseduffield/lazygit) installed

## Usage
Run `install` script using zsh
```zsh
zsh ./install
```

You can also `chmod +x` the file
This will allow you install the dotfiles using `./install` instead of zsh `./install`
```zsh
chmod +x ./install
```

# Configs

## neovim
My neovim config is still in development (at work i use astronvim).

### Roadmap
- [x] lazygit
- [ ] neo-tree

## zsh
I use `oh-my-zsh` with some additional plugins like:
- `zsh-autosuggestions`
- `zsh-syntax-highlighting` (not yet added)
