lua require("OuYang")

call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
Plug 'ThePrimeagen/harpoon'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-lua/plenary.nvim'
Plug 'codota/tabnine-nvim', { 'do': 'pwsh.exe -file ./dl_binaries.ps1' }
Plug 'tzachar/cmp-tabnine', { 'do': 'powershell ./install.ps1' }
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'lazywei/vim-doc-tw'
Plug 'navarasu/onedark.nvim'
Plug 'pablopunk/native-sidebar.vim' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

lua require("toggleterm").setup()
lua require("harpoon").setup({ ... })
let g:onedark_config = {  
    \ 'style': 'warm',  
\}  
colorscheme onedark
let g:native_sidebar_shortcut = '<c-t>'
set number
set encoding=UTF-8
set relativenumber

nnoremap <A-DOWN> :m .+1<CR>==
nnoremap <A-UP> :m .-2<CR>==
inoremap <A-DOWN> <Esc>:m .+1<CR>==gi
inoremap <A-UP> <Esc>:m .-2<CR>==gi
vnoremap <A-UP> :m '<-2<CR>gv=gv
vnoremap <A-DOWN> :m '>+1<CR>gv=gv

nnoremap <C-w> :ToggleTerm size=10 dir=~/Desktop direction=horizontal name=desktop<CR><C-\><C-n>
inoremap <C-w> :ToggleTerm size=10 dir=~/Desktop direction=horizontal name=desktop<CR><C-\><C-n>
noremap <C-w> :ToggleTerm size=10 dir=~/Desktop direction=horizontal name=desktop<CR><C-\><C-n>

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <C-x> <C-v>

nnoremap <A-f> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <A-a> :lua require("harpoon.mark").add_file()<CR>
nnoremap <A-[> :lua require("harpoon.ui").nav_next()<CR>
"nnoremap <A-[> :lua require("harpoon.ui").nav_next()<CR>
"nnoremap <A-]> :lua require("harpoon.ui").nav_prev()<CR>
map <C-_> gcl
imap <C-CR> <C-y> 
inoremap <C-s> <ESC>:w<CR>
nnoremap <C-s> <ESC>:w<CR>







lua <<EOF



local cmp = require('cmp')


cmp.setup({
sources = cmp.config.sources({name = "cmp_tabnine"}),
})
local tabnine = require('cmp_tabnine.config')
tabnine:setup({
	max_lines = 1000,
	max_num_results = 20,
	sort = true,
	run_on_every_keystroke = true,
	snippet_placeholder = '..',
	ignored_file_types = {
		-- default is not to ignore
		-- uncomment to ignore in lua:
		-- lua = true
	},
	min_percent = 0
})
local function tabnine_build_path()
  if vim.loop.os_uname().sysname == "Windows_NT" then
    return "pwsh.exe -file .\\dl_binaries.ps1"
  else
    return "./dl_binaries.sh"
  end
end
require('tabnine').setup({
  disable_auto_comment=true,
  accept_keymap="<Tab>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = {gui = "#808080", cterm = 244},
  exclude_filetypes = {"TelescopePrompt", "NvimTree"},
  log_file_path = nil, -- absolute path to Tabnine log file
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})





EOF
