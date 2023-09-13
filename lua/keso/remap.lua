vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
-- dependencies
-- sudo apt-get intsall xclip
vim.cmd("set clipboard=unnamedplus")
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>P", '"+P')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>P", '"+P')

