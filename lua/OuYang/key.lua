-- key.lua
local key = {}

function key.setup()
    -- 在正常模式下移動行
    vim.keymap.set('n', '<A-DOWN>', ':m .+1<CR>==', { noremap = true, silent = true })
    vim.keymap.set('n', '<A-UP>', ':m .-2<CR>==', { noremap = true, silent = true })

    -- 在插入模式下移動行
    vim.keymap.set('i', '<A-DOWN>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
    vim.keymap.set('i', '<A-UP>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })

    -- 在可視模式下移動行
    vim.keymap.set('v', '<A-UP>', ':m \'<-2<CR>gv=gv', { noremap = true, silent = true })
    vim.keymap.set('v', '<A-DOWN>', ':m \'>+1<CR>gv=gv', { noremap = true, silent = true })

    -- 註解行
    vim.keymap.set('n', '<C-_>', 'gcl', { remap = true })
    vim.keymap.set('i', '<C-_>', 'gcl', { remap = true })

    -- 使用 Ctrl-f 搜索單詞
    vim.keymap.set('n', '<C-f>', '<Esc>/', { noremap = true, silent = true })
    vim.keymap.set('i', '<C-f>', '<Esc>/', { noremap = true, silent = true })

    -- 選擇自動完成
    vim.keymap.set('i', '<C-CR>', '<C-y><Left><Right>', { noremap = true, silent = true })

    -- 保存文件
    vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })
    vim.keymap.set('n', '<C-s>', '<Esc>:w<CR>' , { noremap = true, silent = true })

    -- 將 <C-c> 映射到 <y>
    -- vim.keymap.set('i', '<C-c>', '<y>', { noremap = true, silent = true }) -- 如果需要的話可以取消註解

    -- Alt-o 輸出
    vim.keymap.set('n', '<A-o>', 'ooutput = ', { noremap = true, silent = true })

    -- Ctrl 上下移動
    -- vim.keymap.set('n', '<C-k>', '4k', { noremap = true, silent = true })
    -- vim.keymap.set('n', '<C-j>', '4j', { noremap = true, silent = true })
    vim.keymap.set('n', '<C-up>', '4k', { noremap = true, silent = true })
    vim.keymap.set('n', '<C-down>', '4j', { noremap = true, silent = true })

    -- 在可視模式下上下移動
    -- vim.keymap.set('v', '<C-k>', '4k', { noremap = true, silent = true })
    -- vim.keymap.set('v', '<C-j>', '4j', { noremap = true, silent = true })
    vim.keymap.set('v', '<C-up>', '4k', { noremap = true, silent = true })
    vim.keymap.set('v', '<C-down>', '4j', { noremap = true, silent = true })

    -- 在插入模式下上下移動
    vim.keymap.set('i', '<C-up>', '<up><up><up><up>', { noremap = true, silent = true })
    vim.keymap.set('i', '<C-down>', '<down><down><down><down>', { noremap = true, silent = true })

    -- 移動光標
    vim.keymap.set('n', '<C-right>', 'w', { noremap = true, silent = true })
    vim.keymap.set('n', '<C-left>', 'b', { noremap = true, silent = true })
    vim.keymap.set('i', '<C-right>', '<Esc>lwi', { noremap = true, silent = true })
    vim.keymap.set('i', '<C-left>', '<Esc>lbi', { noremap = true, silent = true })
    
    -- 重新命名
    vim.keymap.set('n', '<f2>', vim.lsp.buf.rename, { noremap = true, silent = true })
    
    -- 回到鼠標上一個位置
    vim.keymap.set('n', '<A-right>', "<C-i>zz", { noremap = true, silent = true })
    vim.keymap.set('n', '<A-left>', "<C-o>zz", { noremap = true, silent = true })
    vim.keymap.set('i', '<A-right>', "<C-i>zz", { noremap = true, silent = true })
    vim.keymap.set('i', '<A-left>', "<C-o>zz", { noremap = true, silent = true })
    
    -- 搜尋var
    vim.keymap.set('n', "<f12>", "<cmd>Telescope lsp_definitions<CR>", { noremap = true, silent = true })

    
end

return key