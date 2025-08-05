return {
  'ibhagwan/fzf-lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('fzf-lua').setup({
      winopts = {
        height = 0.85,
        width = 0.80,
        row = 0.35,
        col = 0.50,
        border = 'rounded',
        preview = {
          default = 'bat',
          border = 'border',
          wrap = 'nowrap',
          hidden = 'nohidden',
          vertical = 'down:45%',
          horizontal = 'right:60%',
          layout = 'flex',
          flip_columns = 120,
        },
      },
      keymap = {
        builtin = {
          ['<F1>'] = 'toggle-help',
          ['<F2>'] = 'toggle-fullscreen',
          ['<F3>'] = 'toggle-preview-wrap',
          ['<F4>'] = 'toggle-preview',
          ['<F5>'] = 'toggle-preview-ccw',
          ['<F6>'] = 'toggle-preview-cw',
          ['<S-down>'] = 'preview-page-down',
          ['<S-up>'] = 'preview-page-up',
          ['<S-left>'] = 'preview-page-reset',
        },
        fzf = {
          ['ctrl-z'] = 'abort',
          ['ctrl-u'] = 'unix-line-discard',
          ['ctrl-f'] = 'half-page-down',
          ['ctrl-b'] = 'half-page-up',
          ['ctrl-a'] = 'beginning-of-line',
          ['ctrl-e'] = 'end-of-line',
          ['alt-a'] = 'select-all',
          ['alt-d'] = 'deselect-all',
        },
      },
      fzf_opts = {
        ['--ansi'] = '',
        ['--info'] = 'inline',
        ['--height'] = '100%',
        ['--layout'] = 'reverse',
        ['--border'] = 'none',
      },
    })

    -- Key mappings
    local map = vim.keymap.set
    
    -- Files
    map('n', '<leader>ff', '<cmd>FzfLua files<CR>', { desc = 'Find files' })
    map('n', '<leader>fo', '<cmd>FzfLua oldfiles<CR>', { desc = 'Recent files' })
    
    -- Search
    map('n', '<leader>fg', '<cmd>FzfLua live_grep<CR>', { desc = 'Live grep' })
    map('n', '<leader>fw', '<cmd>FzfLua grep_cword<CR>', { desc = 'Grep word under cursor' })
    map('n', '<leader>fW', '<cmd>FzfLua grep_cWORD<CR>', { desc = 'Grep WORD under cursor' })
    map('v', '<leader>fv', '<cmd>FzfLua grep_visual<CR>', { desc = 'Grep visual selection' })
    
    -- Buffers
    map('n', '<leader>fb', '<cmd>FzfLua buffers<CR>', { desc = 'Find buffers' })
    map('n', '<leader>fl', '<cmd>FzfLua blines<CR>', { desc = 'Lines in current buffer' })
    
    -- Git
    map('n', '<leader>gc', '<cmd>FzfLua git_commits<CR>', { desc = 'Git commits' })
    map('n', '<leader>gb', '<cmd>FzfLua git_branches<CR>', { desc = 'Git branches' })
    map('n', '<leader>gs', '<cmd>FzfLua git_status<CR>', { desc = 'Git status' })
    
    -- LSP
    map('n', '<leader>fr', '<cmd>FzfLua lsp_references<CR>', { desc = 'LSP references' })
    map('n', '<leader>fd', '<cmd>FzfLua lsp_definitions<CR>', { desc = 'LSP definitions' })
    map('n', '<leader>fs', '<cmd>FzfLua lsp_document_symbols<CR>', { desc = 'Document symbols' })
    map('n', '<leader>fS', '<cmd>FzfLua lsp_workspace_symbols<CR>', { desc = 'Workspace symbols' })
    
    -- Help and commands
    map('n', '<leader>fh', '<cmd>FzfLua help_tags<CR>', { desc = 'Help tags' })
    map('n', '<leader>fc', '<cmd>FzfLua commands<CR>', { desc = 'Commands' })
    map('n', '<leader>fk', '<cmd>FzfLua keymaps<CR>', { desc = 'Key mappings' })
    
    -- Misc
    map('n', '<leader>f:', '<cmd>FzfLua command_history<CR>', { desc = 'Command history' })
    map('n', '<leader>f/', '<cmd>FzfLua search_history<CR>', { desc = 'Search history' })
  end,
}