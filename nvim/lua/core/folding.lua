-- [[ Folding settings ]]

local opt = vim.opt                 -- Nvim options alias
local g = vim.g                     -- Global nvim variables

opt.foldmethod = "indent"           -- Folding method based on indentation
opt.foldlevelstart = 999            -- Start all folds at the same level
opt.foldnestmax = 2                 -- Maximum nesting level for folds