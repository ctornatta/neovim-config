# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal Neovim configuration built around the Lazy.nvim plugin manager. The configuration follows a modular architecture with plugins organized in separate files and a clean separation between core Vim options and plugin configurations.

## Architecture

- **Entry Point**: `init.lua` - Sets up Lazy.nvim and loads core modules
- **Core Configuration**: `lua/vim-options.lua` - Contains all Vim settings, keymaps, and autocommands
- **Plugin Management**: `lua/plugins.lua` - Currently empty, serves as plugin directory index
- **Plugin Configurations**: `lua/plugins/` - Individual plugin configuration files

## Key Dependencies

The configuration requires these external tools to be installed on the system:
- `wl-clipboard` - For clipboard syncing under Wayland
- `lazygit` - Git TUI integrated via the lazygit plugin
- `make` - Required for telescope-fzf-native compilation

## Plugin Architecture

Each plugin is configured in its own file under `lua/plugins/`:

- **Telescope** (`telescope.lua`) - Fuzzy finder with extensive keybindings
- **Neo-tree** (`neo-tree.lua`) - File explorer with filesystem and buffer views
- **LazyGit** (`lazygit.lua`) - Git interface accessible via `<leader>lg`
- **Barbar** (`barbar.lua`) - Buffer/tab management with Alt+comma/period navigation
- **Which-key** (`which-key.lua`) - Key binding helper with instant display
- **Vim-tmux-navigator** (`vim-tmux-navigator.lua`) - Seamless navigation between Vim and tmux panes
- **Claude Code** (`claudecode.lua`) - AI assistant integration with WebSocket-based protocol

## Key Bindings

The leader key is set to Space (`<leader> = ' '`).

### Navigation
- `<C-h/j/k/l>` - Navigate between windows (overridden by tmux-navigator for tmux integration)
- `<leader>[` / `<leader>]` - Navigate between buffers (barbar)

### File Operations
- `<leader>f` - Open Neo-tree file explorer (left sidebar)
- `<leader>bf` - Open Neo-tree buffer explorer (floating)
- `<leader>lg` - Open LazyGit

### Search (Telescope)
- `<leader>sf` - Search files
- `<leader>sg` - Live grep
- `<leader>sw` - Search current word
- `<leader>sh` - Search help
- `<leader>sk` - Search keymaps
- `<leader>sn` - Search Neovim config files
- `<leader><leader>` - Find existing buffers
- `<leader>/` - Fuzzy search in current buffer

### Diagnostics
- `<leader>q` - Open diagnostic quickfix list

### AI Assistant (Claude Code)
- `<leader>ac` - Toggle Claude Code terminal
- `<leader>as` - Send visual selection to Claude (visual mode)
- `<leader>ad` - Accept Claude diff suggestions
- `<leader>ar` - Reject Claude diff suggestions

## Configuration Philosophy

- **Modular Design**: Each plugin has its own configuration file
- **Lazy Loading**: Plugins are loaded on-demand when possible
- **Sensible Defaults**: Based on kickstart.nvim with personal customizations
- **Tmux Integration**: Seamless navigation between Vim and tmux panes
- **Modern Vim**: Uses Lua configuration throughout, no legacy Vimscript

## Development Workflow

When modifying this configuration:
1. Plugin configurations go in `lua/plugins/[plugin-name].lua`
2. Core Vim settings belong in `lua/vim-options.lua`
3. Test changes by reloading Neovim (`:qa` and restart)
4. Use `:Lazy` to manage plugin installations and updates

## Documentation Management

### Keybinding Cheat Sheet
A comprehensive keybinding cheat sheet is maintained at `docs/README.md`. This file contains:
- All custom Neovim keybindings organized by category
- Tmux keybindings and configuration details
- Cross-reference with plugin configurations

**Important**: When adding new keybindings or plugins:
1. Add the plugin configuration to `lua/plugins/[plugin-name].lua`
2. Update `docs/README.md` with any new keybindings
3. Keep the cheat sheet synchronized with actual configurations

Claude Code is responsible for maintaining this documentation automatically when configuration changes are made.

## File Structure Notes

The `plugins.lua` file currently returns an empty table but serves as the entry point for Lazy.nvim to discover plugin configurations in the `plugins/` directory. New plugins should be added as separate files in `lua/plugins/`.