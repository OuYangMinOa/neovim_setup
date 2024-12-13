-- set.lua
local set = {}

function set.setup()
    vim.wo.number = true
    vim.o.encoding = "UTF-8"
    vim.wo.relativenumber = true
    vim.o.tabstop = 4
    vim.o.shiftwidth = 4
    vim.o.background = "dark"
end

return set