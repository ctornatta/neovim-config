# neovim-config
My neovim configuration

# To install

```shell
git clone git@github.com:ctornatta/neovim-config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

Install `wl-clipboard` to enable clipboard syncing under wayland
```shell
sudo dnf install wl-clipboard
```

Install Lazygit
```shell
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit
```

Install fzf
```shell
sudo dnf install fzf
```

Point tmux at the config file in this repo
```shell
alias tmux='tmux -f ~/.config/nvim/tmux/tmux.conf'
```

Add to alias to open up files via fzf. Use `tab` to select multiple files.
```shell
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'
```

# Documentation

📖 **[Keybinding Cheat Sheet](docs/README.md)** - Complete reference for all Neovim and tmux keybindings

# Inspirational Configs

https://github.com/BreadOnPenguins/nvim

https://github.com/nvim-lua/kickstart.nvim

https://github.com/cpow/neovim-for-newbs/

