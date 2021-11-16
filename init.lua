local cmd = vim.cmd
local opt = vim.opt
local fn = vim.fn

-- set up paq package manager
cmd 'packadd paq-nvim'	
local paq = require('paq-nvim').paq
paq { 'savq/paq-nvim', opt = true }

-- download/install packages
paq { 'morhetz/gruvbox' }
paq { 'junegunn/fzf.vim', run = fn['fzf#install'] }


-- set editor options
opt.termguicolors = true
opt.number = true
opt.smartindent = true
opt.tabstop = 4
opt.shiftwidth = 4

-- personalisation
cmd 'colorscheme gruvbox'
