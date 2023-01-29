local cmd = vim.cmd
local opt = vim.opt
local g = vim.g


g.mapleader = ' '
g.blamer_enabled = true
g.everforest_background = 'hard'
g.everforest_better_performance = true

-- set editor options
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.smartindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.swapfile = false
opt.hlsearch = false
opt.incsearch = true
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
cmd [[colorscheme everforest]]
cmd [[set noswapfile]]

require('plugins')
require('keymaps')

