local map = vim.api.nvim_set_keymap			-- keymap nvim method alias

--[[
Function to set a new keymap (normal)
key - {string} Keymap string
command - {string} Command
]]--
function nm(key, command) 
	map('n', key, command, {noremap = true})
end

--[[
Function to set a new keymap (input)
key - {string} Keymap string
command - {string} Command
]]--
function im(key, command)
	map('i', key, command, {noremap = true})
end

--[[
Function to set a new keymap (visual)
key - {string} Keymap string
command - {string} Command
]]--
function vm(key, command)
	map('v', key, command, {noremap = true})
end

--[[
Function to set a new keymap (terminal)
key - {string} Keymap string
command - {string} Command
]]--
function tm(key, command)
	map('t', key, command, {noremap = true})
end
