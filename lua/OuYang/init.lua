vim.g.mapleader = " " -- Set leader key before Lazy


-- init.lua
require("OuYang.set").setup()

-- key.lua
require("OuYang.key").setup()

-- lazy_init.lua
require("OuYang.lazy_init")