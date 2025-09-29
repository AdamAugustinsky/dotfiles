-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.opt.autochdir = false

-- Prevent automatic directory changes in monorepos
vim.g.root_spec = { "cwd" }

-- Performance optimizations
vim.opt.updatetime = 300 -- Faster completion
vim.opt.timeoutlen = 300 -- Faster key sequence completion
vim.opt.redrawtime = 1500 -- Time in milliseconds for redrawing the display
vim.opt.synmaxcol = 200 -- Maximum column to search for syntax items
-- vim.opt.lazyredraw = true     -- Don't redraw while executing macros
