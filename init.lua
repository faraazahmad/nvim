local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

g.mapleader = ' '
g.blamer_enabled = true
g.gruvbox_contrast_light = 'soft'

-- set editor options
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.background = 'dark'
opt.smartindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.swapfile = false
-- opt.hlsearch = false
opt.incsearch = true
-- Access colors present in 256 colorspace
vim.g.base16_colorspace = 256
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.updatetime = 50
opt.colorcolumn = "120"

-- personalisation
cmd [[syntax on]]
cmd [[set t_Co=256]]
cmd [[set nocompatible]]
cmd [[filetype on]]
cmd [[filetype indent on]]
cmd [[set mouse=a]]
cmd [[filetype plugin on]]
cmd [[set cursorline]]
cmd [[colorscheme darcula-solid]]
cmd [[set noswapfile]]

require('plugins')
require('keymaps')

