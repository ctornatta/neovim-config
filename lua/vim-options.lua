-- VIM options

-- spacebar is the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

-- line numbering
vim.o.number = true
vim.o.relativenumber = true

-- enable mousemode
vim.o.mouse = 'a'

-- I think this syncs the OS and NEOVIM clipboards together.
-- if using wayland ensure that wl-clipboard is installed
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)
