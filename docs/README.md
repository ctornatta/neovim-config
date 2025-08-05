# Neovim & Tmux Keybinding Cheat Sheet

This document contains all custom keybindings for my Neovim and tmux configurations.

**Leader Key**: `Space` (`<leader>`)

---

## 🔧 Core Neovim Keybindings

### Navigation & Windows
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<C-h>` | Move focus left | Move to left window |
| `<C-j>` | Move focus down | Move to lower window |
| `<C-k>` | Move focus up | Move to upper window |
| `<C-l>` | Move focus right | Move to right window |
| `<Esc>` | Clear search | Clear search highlights |
| `<Esc><Esc>` | Exit terminal | Exit terminal mode |

### Buffer Management
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<leader>[` | Previous buffer | Navigate to previous buffer |
| `<leader>]` | Next buffer | Navigate to next buffer |

### Diagnostics
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<leader>q` | Diagnostic quickfix | Open diagnostic quickfix list |

---

## 🔍 Telescope (Fuzzy Finder)

### Search Commands
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<leader>sf` | Search files | Find files in project |
| `<leader>sg` | Live grep | Search text across files |
| `<leader>sw` | Search word | Search current word under cursor |
| `<leader>sh` | Search help | Search help documentation |
| `<leader>sk` | Search keymaps | Search available keymaps |
| `<leader>sn` | Search Neovim | Search Neovim config files |
| `<leader>ss` | Select telescope | Browse telescope pickers |
| `<leader>sd` | Search diagnostics | Search LSP diagnostics |
| `<leader>sr` | Search resume | Resume last telescope search |
| `<leader>s.` | Recent files | Search recently opened files |
| `<leader><leader>` | Find buffers | Find existing buffers |
| `<leader>/` | Buffer search | Fuzzy search in current buffer |
| `<leader>s/` | Search open files | Live grep in open files only |

### Telescope Navigation (Inside Picker)
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<C-/>` | Help (Insert mode) | Show keymaps for current picker |
| `?` | Help (Normal mode) | Show keymaps for current picker |

---

## 🔍 FZF-Lua (Fast Fuzzy Finder)

### File Operations
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<leader>ff` | Find files | Search files in project |
| `<leader>fo` | Recent files | Search recently opened files |
| `<leader>fb` | Find buffers | Search open buffers |
| `<leader>fl` | Buffer lines | Search lines in current buffer |

### Search Operations
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<leader>fg` | Live grep | Search text across files |
| `<leader>fw` | Grep word | Search word under cursor |
| `<leader>fW` | Grep WORD | Search WORD under cursor |
| `<leader>fv` | Grep visual | Search visual selection (visual mode) |

### Git Integration
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<leader>gc` | Git commits | Browse git commit history |
| `<leader>gb` | Git branches | Switch git branches |
| `<leader>gs` | Git status | View git status with fzf |

### LSP Integration
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<leader>fr` | LSP references | Find symbol references |
| `<leader>fd` | LSP definitions | Go to symbol definitions |
| `<leader>fs` | Document symbols | Browse document symbols |
| `<leader>fS` | Workspace symbols | Browse workspace symbols |

### Help & Commands
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<leader>fh` | Help tags | Search help documentation |
| `<leader>fc` | Commands | Search available commands |
| `<leader>fk` | Key mappings | Search key mappings |
| `<leader>f:` | Command history | Browse command history |
| `<leader>f/` | Search history | Browse search history |

### FZF Navigation (Inside Picker)
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<F1>` | Toggle help | Show/hide help |
| `<F2>` | Toggle fullscreen | Toggle fullscreen mode |
| `<F4>` | Toggle preview | Show/hide preview pane |
| `<Ctrl-f>` | Page down | Scroll preview down |
| `<Ctrl-b>` | Page up | Scroll preview up |
| `<Alt-a>` | Select all | Select all items |
| `<Alt-d>` | Deselect all | Deselect all items |

---

## 📁 Neo-tree (File Explorer)

| Keybinding | Action | Description |
|------------|--------|-------------|
| `<leader>f` | File explorer | Open filesystem tree (left sidebar) |
| `<leader>bf` | Buffer explorer | Open buffer tree (floating window) |

---

## 🔀 Git Integration

### LazyGit
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<leader>lg` | LazyGit | Open LazyGit interface |

---

## 📊 Lualine (Status Line)

Lualine provides a fast and configurable statusline with the following features:
- **Mode indicator**: Shows current Vim mode (Normal, Insert, Visual, etc.)
- **Git branch**: Displays current git branch
- **Git diff**: Shows added/modified/removed line counts
- **Diagnostics**: LSP diagnostic counts (errors, warnings, info, hints)
- **File information**: Encoding, file format, and file type
- **Location**: Current line and column position
- **Progress**: Percentage through file

*No custom keybindings - displays automatically in the status line*

---

## 🌳 Treesitter (Syntax Highlighting & Navigation)

Treesitter provides advanced syntax highlighting, code navigation, and text objects based on syntax trees.

### Incremental Selection
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<C-space>` | Init/Expand selection | Start selection or expand to next syntax node |
| `<C-s>` | Expand scope | Expand selection to outer scope |
| `<C-backspace>` | Shrink selection | Shrink selection to previous node |

### Text Objects
| Keybinding | Action | Description |
|------------|--------|-------------|
| `af` | Around function | Select entire function including definition |
| `if` | Inside function | Select function body only |
| `ac` | Around class | Select entire class including definition |
| `ic` | Inside class | Select class body only |

### Navigation
| Keybinding | Action | Description |
|------------|--------|-------------|
| `]m` | Next function start | Jump to start of next function |
| `]M` | Next function end | Jump to end of next function |
| `[m` | Previous function start | Jump to start of previous function |
| `[M` | Previous function end | Jump to end of previous function |
| `]]` | Next class start | Jump to start of next class |
| `][` | Next class end | Jump to end of next class |
| `[[` | Previous class start | Jump to start of previous class |
| `[]` | Previous class end | Jump to end of previous class |

### Features
- **Enhanced highlighting**: Better syntax highlighting for 15+ languages
- **Smart indentation**: Language-aware indentation
- **Auto-install**: Parsers installed automatically for configured languages

---

## 🤖 Claude Code (AI Assistant)

| Keybinding | Action | Description |
|------------|--------|-------------|
| `<leader>ac` | Toggle Claude | Toggle Claude Code terminal |
| `<leader>as` | Send to Claude | Send visual selection to Claude (visual mode) |
| `<leader>ad` | Accept diff | Accept Claude diff suggestions |
| `<leader>ar` | Reject diff | Reject Claude diff suggestions |

---

## 🔄 Tmux Keybindings

**Prefix Key**: `Ctrl-a` (`<prefix>`)

### Session & Configuration
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<prefix> r` | Reload config | Source tmux configuration file |

### Pane Management
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<prefix> \|` | Vertical split | Split window vertically |
| `<prefix> -` | Horizontal split | Split window horizontally |
| `<prefix> m` | Maximize pane | Toggle pane zoom/maximize |

### Pane Navigation
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<prefix> h` | Move left | Select left pane |
| `<prefix> j` | Move down | Select lower pane |
| `<prefix> k` | Move up | Select upper pane |
| `<prefix> l` | Move right | Select right pane |

### Pane Resizing
| Keybinding | Action | Description |
|------------|--------|-------------|
| `<prefix> h` | Resize left | Resize pane left by 5 columns |
| `<prefix> j` | Resize down | Resize pane down by 5 rows |
| `<prefix> k` | Resize up | Resize pane up by 5 rows |
| `<prefix> l` | Resize right | Resize pane right by 5 columns |

### Settings
- **Base index**: Windows and panes start at 1 (not 0)
- **Mouse support**: Enabled
- **Terminal**: 256 color support

---

## 🎨 Theme (TokyoNight)

**Active Theme**: TokyoNight Night (Dark)

TokyoNight provides a clean, modern dark theme with excellent readability and syntax highlighting support:
- **Style**: Night variant (darkest version)
- **Terminal colors**: Full 256-color support
- **Italic support**: Comments and keywords styled with italics
- **Consistent styling**: Sidebars and floating windows match the dark theme
- **Plugin integration**: Optimized for Treesitter, LSP, and all configured plugins

*No keybindings - theme is automatically applied on startup*

---

## 📝 Notes

- **Window Navigation**: Use `Ctrl-h/j/k/l` for Neovim window navigation
- **Lazy Loading**: Many plugins are loaded on-demand to improve startup time
- **Leader Timeout**: 300ms timeout for leader key sequences
- **Clipboard**: Syncs with system clipboard (requires `wl-clipboard` on Wayland)

---

*This cheat sheet is automatically managed by Claude Code. Last updated: 2025-08-02*