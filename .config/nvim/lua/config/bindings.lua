
vim.g.mapleader = ' '

-- Base
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "<C-c>", "<nop>")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>G", vim.cmd.Git)
vim.keymap.set("n", "<leader>ga", vim.cmd.Git("add ."))
