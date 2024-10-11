-- [[ Search settings ]]

local opt = vim.opt       -- Nvim options alias
local g = vim.g           -- Global nvim variables

opt.ignorecase = true     -- Not case sensitive search. If `ABOBA` searched, it will search `aboba` as well
opt.smartcase = true      -- If there are upper case symbols, it won't ignore it. If `Aboba` searched, it will only search `Aboba`
opt.showmatch = true      -- Highlight searched items
opt.incsearch = true      -- Incremental search