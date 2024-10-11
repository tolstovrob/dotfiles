-- [[ Plugin actions keymaps ]]

local map = vim.api.nvim_set_keymap         -- Nvim keymap settings alias

--[[ Mapping methods ]]--
-- key: string -- keymap
-- command: string -- command to execute

-- Normal mode map
function nm(key, command) 
	map('n', key, command, {noremap = true})
end

-- Visual mode map
function vm(key, command) 
  map('v', key, command, {noremap = true})
end

-- Insert mode map
function im(key, command) 
  map('i', key, command, {noremap = true})
end

-- Command-line mode map
function cm(key, command) 
  map('c', key, command, {noremap = true})
end

--[[ Keymaps ]]--