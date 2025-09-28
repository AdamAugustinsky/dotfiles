return {
  {
    "greggh/claude-code.nvim",
    cmd = { "ClaudeCode", "ClaudeCodeVersion", "ClaudeCodeContinue", "ClaudeCodeVerbose" },
    keys = {
      { "<C-,>", desc = "Toggle Claude Code" },
      { "<leader>cC", desc = "Claude Code Continue" },
      { "<leader>cV", desc = "Claude Code Verbose" },
    },
    dependencies = {
      "nvim-lua/plenary.nvim", -- Required for git operations
    },
    config = function()
      require("claude-code").setup({
        window = {
          position = "vertical", -- Open in vertical split instead of horizontal
          split_ratio = 0.3, -- Width of vertical split (30% of screen)
        },
        keymaps = {
          toggle = {
            normal = "<C-,>", -- Normal mode keymap for toggling Claude Code, false to disable
            terminal = "<C-,>", -- Terminal mode keymap for toggling Claude Code, false to disable
            variants = {
              continue = "<leader>cC", -- Normal mode keymap for Claude Code with continue flag
              verbose = "<leader>cV", -- Normal mode keymap for Claude Code with verbose flag
            },
          },
          window_navigation = true, -- Enable window navigation keymaps (<C-h/j/k/l>)
          scrolling = true, -- Enable scrolling keymaps (<C-f/b>) for page up/down
        },
      })
    end,
  },
}
