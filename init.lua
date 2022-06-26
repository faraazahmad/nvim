local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

require('plugins')
require('keymaps')

-- set editor options
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.smartindent = true
opt.tabstop = 4
opt.shiftwidth = 4

-- treesitter config
local ts = require('nvim-treesitter.configs')
ts.setup { ensure_installed = 'maintained', highlight = { enable = true }}

-- coc extension names to install when not installed
-- g['coc_global_extensions'] = {
--	'coc-lua',
--	'coc-rust-analyzer',
--	'coc-json',
--	'coc-tsserver'
--}

-- personalisation
cmd [[syntax on]]
cmd [[set t_Co=256]]
cmd [[set cursorline]]
cmd [[colorscheme gruvbox]]

-- statusline/bufferline
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff',
                  {'diagnostics'}},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
	lualine_a = {'buffers'}
  },
  extensions = {}
}

-- gitsigns
require('gitsigns').setup()

-- telescope coc
--require('telescope').load_extension('coc')
