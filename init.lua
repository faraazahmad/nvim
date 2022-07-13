local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

g.mapleader = ' '

require('plugins')
require('keymaps')

-- set editor options
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.smartindent = true
opt.tabstop = 4
opt.shiftwidth = 4

-- personalisation
cmd [[syntax on]]
cmd [[set t_Co=256]]
cmd [[set cursorline]]
cmd [[colorscheme gruvbox]]

-- statusline/bufferline

-- gitsigns
require('gitsigns').setup()

-- telescope coc
require('telescope').load_extension('coc')
