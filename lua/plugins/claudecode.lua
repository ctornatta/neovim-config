return {
    "coder/claudecode.nvim",
    dependencies = { 
        "folke/snacks.nvim" 
    },
    config = true,
    keys = {
        { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude Code" },
        { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send selection to Claude" },
        { "<leader>ad", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept Claude diff" },
        { "<leader>ar", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Reject Claude diff" }
    }
}