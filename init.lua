local cmd = vim.cmd
local opt = vim.opt

require('plugins')

-- set editor options
opt.termguicolors = true
-- opt.number = true
opt.smartindent = true
opt.tabstop = 4
opt.shiftwidth = 4

-- treesitter config
local ts = require('nvim-treesitter.configs')
ts.setup { ensure_installed = 'maintained', highlight = { enable = true }}

-- personalisation
cmd [[syntax on]]
cmd [[set t_Co=256]]
cmd [[set cursorline]]
cmd [[colorscheme onehalfdark]]
