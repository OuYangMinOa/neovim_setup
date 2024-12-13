vim.g.mapleader = " " -- Set leader key before Lazy


-- init.lua
require("ouyang.set").setup()

-- key.lua
require("ouyang.key").setup()

-- lazy_init.lua
require("ouyang.lazy_init")