return {
  {
    "nvim-svelte/nvim-svelte-snippets",
    dependencies = "L3MON4D3/LuaSnip",
    opts = {
      -- your configuration comes here
      -- or leave empty for defaults
    },
  },
  {
    "nvim-svelte/nvim-svelte-check",
    config = function()
      require("svelte-check").setup({
        command = "bun run check",
      })
    end,
  },
}
