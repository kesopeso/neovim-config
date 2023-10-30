vim.g.mapleader = " "
vim.g.user_emmet_leader_key = "<C-e>"

vim.keymap.set("n", "<leader>rpcs", ":lua UseColorScheme('rose-pine')<CR>")

-- this is now defined in after/plugin/nvim-tree.lua,
-- because i'm using nvim-tree as my file browser now
-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- when lines are highlighted, I can move them up and down in chunks
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- this is for appending the next line to the current one
vim.keymap.set("n", "J", "mzJ`z")

-- this keeps cursor in the middle when jumping half a page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- this keeps the search term in the middle when going to the next/prev search result
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- this keeps the original copied text, when pasting over visually selected text
-- x mode: normal visual
vim.keymap.set("x", "<leader>p", '"_dP')

-- delete to void register (in case you have something copied and don't want to overwrite it
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

-- quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace word occurances
vim.keymap.set("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- navigate around windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
