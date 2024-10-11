-- [[ Editor settings ]]

local opt = vim.opt                                   -- Nvim options alias
local g = vim.g                                       -- Global nvim variables

opt.clipboard = "unnamedplus"                         -- Highlight searched items
opt.fixeol = true                                     -- Decides whether file ends with LF or CRLF
opt.number = true                                     -- Show line numbers
opt.relativenumber = true                             -- Show relative line numbers
opt.cursorline = true                                 -- Highlight current line
opt.colorcolumn = "120"                               -- Highlights column on 120 characters
opt.shiftwidth = 2                                    -- Shifting via Right and Left arrows will be multiplied by 2 (tab size)
opt.tabstop = 2                                       -- Tabsize is 2 now
opt.smartindent = true                                -- Adjust new lines by previous indent
vim.cmd("autocmd BufEnter * set fo-=c fo-=r fo-=o")   -- Not comment new lines of comments
