local opt = vim.opt		-- vim options variable alias
local g = vim.g			-- vim global variables alias

--[[ BUFFERS ]]--
opt.splitright = true
opt.splitbelow = true

--[[ ADDITIONAL ]]--
opt.fixeol = false
opt.completeopt = 'menuone,noselect'
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]

