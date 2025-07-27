-- VIM options

-- spacebar is the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- enables the use of font glyphs
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

-- When a line of text is too long to fit the window and wraps to the next line, breakindent ensures that the wrapped part is indented to align with the beginning of the line
vim.o.breakindent = true

-- Save undo history to disk for later use after file closure stored at ~/.local/state/nvim/undo/
vim.o.undofile = true

-- This tells Neovim to ignore case when searching 
vim.o.ignorecase = true
-- This overrides ignorecase when your search pattern contains uppercase letters.
vim.o.smartcase = true
