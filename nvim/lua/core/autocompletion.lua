-- [[ Built-in autocompletion settings ]]

require("core.alias")

opt.completeopt = "menuone,noselect"                              -- Setting up autocompletion
g.completion_matching_strategy = {"exact", "substring", "fuzzy"}  -- Matching strategy for completion
g.completion_enable_snippet = true                                -- Enable snippet support
g.completion_snippet_next_key = "<tab>"                           -- Key to move to next snippet placeholder
g.completion_confirm_key = "<cr>"                                 -- Key to confirm completion