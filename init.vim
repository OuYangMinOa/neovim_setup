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
Plug 'debugloop/telescope-undo.nvim'
Plug 'lazywei/vim-doc-tw'
Plug 'navarasu/onedark.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'pablopunk/native-sidebar.vim' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'chentoast/marks.nvim'
Plug 'nvim-treesitter/nvim-treesitter-context'
call plug#end()

lua require("toggleterm").setup()
lua require("harpoon").setup({ ... })
let g:onedark_config = {  
    \ 'style': 'warm', 'background' : 'dark'
\}  
let g:native_sidebar_shortcut = '<c-t>'
set number
set encoding=UTF-8
set relativenumber
set tabstop=4
set shiftwidth=4
set background=dark


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
nnoremap <A-]> :lua require("harpoon.ui").nav_prev()<CR>
"nnoremap <A-[> :lua require("harpoon.ui").nav_next()<CR>

"Comment line
map <C-_> gcl

"search word with ctrl-f
nnoremap <C-f> <Esc>/
inoremap <C-f> <Esc>/

"Select auto complete
imap <C-CR> <C-y><Left><Right>

"save file
inoremap <C-s> <ESC>:w<CR>
nnoremap <C-s> <ESC>:w<CR>

"map <C-c> <y>
"inoremap <A-b> <Esc><p>

" Alt-o o output
nnoremap <A-o> ooutput =  

" cltr up and down
nnoremap <C-k> 4k
nnoremap <C-j> 4j
nnoremap <C-up> 4k
nnoremap <C-down> 4j

vnoremap <C-k> 4k
vnoremap <C-j> 4j
vnoremap <c-up> 4k
vnoremap <c-down> 4j

inoremap <C-up> <up><up><up><up>
inoremap <C-down> <down><down><down><down>

nnoremap <C-right> w
nnoremap <C-left> b
inoremap <C-right> <Esc>lwi
inoremap <C-left> <Esc>lbi

"undo tree
nnoremap <A-e> :Telescope undo<CR>

lua <<EOF

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
  debounce_ms = 200,
  suggestion_color = {gui = "#808080", cterm = 244},
  exclude_filetypes = {"TelescopePrompt", "NvimTree"},
  log_file_path = nil, -- absolute path to Tabnine log file
})

require('telescope').setup{
	defaults = {
		file_ignore_patterns = { ".git/", ".cache", "%.o", "%.a", "%.out", "__pycache__"},
	},
}

require("telescope").load_extension("undo")
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})

require'treesitter-context'.setup{
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 3, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 20, -- Maximum number of lines to show for a single context
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = nil,
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}

require("catppuccin").setup({
	flavour = "macchiato",
	background ="#000000",
	transparent_background = true,
})
vim.cmd.colorscheme "catppuccin"

require('marks').setup( {
	default_mappings = true,
	builtin_marks = { ".", "<", ">", "^"}, 
	cyclic = true,
	refresh_interval = 250,
})



EOF
