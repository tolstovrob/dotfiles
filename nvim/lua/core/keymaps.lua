local keymap = vim.keymap.set -- keymap alias
local g = vim.g  

-- Leader
g.mapleader = " "

-- Nvim tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true, desc = "Toggle NvimTree" })
keymap("n", "<leader>ff", ":NvimTreeFindFile<CR>", { noremap = true, silent = true, desc = "Find File in NvimTree" })
keymap("n", "<leader>fr", ":NvimTreeRefresh<CR>", { noremap = true, silent = true, desc = "Refresh NvimTree" })
keymap("n", "<leader>fc", ":NvimTreeCollapse<CR>", { noremap = true, silent = true, desc = "Collapse NvimTree" })