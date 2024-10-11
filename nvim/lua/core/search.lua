-- [[ Search settings ]]

require("core.alias")

opt.ignorecase = true     -- Not case sensitive search. If `ABOBA` searched, it will search `aboba` as well
opt.smartcase = true      -- If there are upper case symbols, it won't ignore it. If `Aboba` searched, it will only search `Aboba`
opt.showmatch = true      -- Highlight searched items
opt.incsearch = true      -- Incremental search