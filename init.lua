local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

require('plugins')

-- set editor options
opt.termguicolors = true
opt.number = true
opt.smartindent = true
opt.tabstop = 4
opt.shiftwidth = 4

-- treesitter config
local ts = require('nvim-treesitter.configs')
ts.setup { ensure_installed = 'maintained', highlight = { enable = true }}

-- coc extension names to install when not installed
g['coc_global_extensions'] = {
	'coc-lua',
	'coc-rust-analyzer',
	'coc-json',
	'coc-tsserver'
}

-- personalisation
cmd [[syntax on]]
cmd [[set t_Co=256]]
cmd [[set cursorline]]
cmd [[colorscheme onedark]]
