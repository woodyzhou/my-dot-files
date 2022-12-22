# My Dev Environment Dot Files

## Terminal Setup

### Relevant Files

- [.zshrc](./.zshrc) - Zsh Shell configuration

### Setup

- Install Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- Install PowerLevel10K Theme for Oh My Zsh

```bash
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

- Configure PowerLevel10K

```bash
p10k configure
```

- Install Zsh plugins

```bash
# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

```

## Tmux Setup

### Relevant Files

- [.tmux.conf](./.tmux.conf) - Tmux configuration file

### Setup

- Copy [.tmux.conf](./.tmux.conf) to home folder
- Start tmux with command `tmux`
- Install Tmux plugins - type `Ctrl + A - I` in tmux

## Neovim Setup

### Relevant Files

- [.config/nvim](.config/nvim)

### Setup

- True Color Terminal Like: [iTerm2](https://iterm2.com/)
- [Neovim](https://neovim.io/) (Version 0.8 or Later)
- [Nerd Font](https://www.nerdfonts.com/) - I use Meslo Nerd Font
- [Ripgrep](https://github.com/BurntSushi/ripgrep) - For Telescope Fuzzy Finder
- XCode Command Line Tools

If you're on mac, like me, you can install iTerm2, Neovim, Ripgrep and Node with homebrew.

```bash
brew install --cask iterm2
```

```bash
brew install neovim
```

```bash
brew install ripgrep
```

For XCode Command Line Tools do:

```bash
xcode-select --install
```

- Install neovim plugins by open [.config/nvim/lua/woody/plugins-setup.lua](./.config/nvim/lua/woody/plugins-setup.lua) with `nvim` and save file with `:w`
