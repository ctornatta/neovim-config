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

Point tmux at the config file in this repo
```shell
alias tmux='tmux -f ~/.config/nvim/tmux/tmux.conf'
```

# Inspirational Configs

https://github.com/BreadOnPenguins/nvim

https://github.com/nvim-lua/kickstart.nvim

https://github.com/cpow/neovim-for-newbs/

