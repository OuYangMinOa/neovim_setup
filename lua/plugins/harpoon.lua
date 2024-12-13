return {
    {
        'ThePrimeagen/harpoon',
        config =  function()
            local builtin_ui   = require("harpoon.ui")
            local builtin_mark = require("harpoon.mark")
            vim.keymap.set('n', "<A-f>", builtin_ui.toggle_quick_menu)
            vim.keymap.set('n', "<A-a>", builtin_mark.add_file)
            vim.keymap.set('n', "<A-[>", builtin_ui.nav_next)
            vim.keymap.set('n', "<A-]>", builtin_ui.nav_prev)
        end, 
    }
}
