local fn = vim.fn
local cmd = vim.cmd
local packer_bootstrap

-- install packer if not present
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- autorun PackerCompile when this file is modified
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- set up packer package manager
return require('packer').startup(function(use)
	-- packer can manager itself
	use { 'wbthomason/packer.nvim' }

	-- NERDTree and devicons
	use { 'preservim/nerdtree' }
	use { 'ryanoasis/vim-devicons' }

	-- statusline/bufferline
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- telescope for all things awesome
	use {
		'nvim-telescope/telescope.nvim',
		requires = {
			{ 'nvim-lua/plenary.nvim' },
			{ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    		{ "nvim-telescope/telescope-live-grep-args.nvim" }
		},

		config = function()
    		require("telescope").load_extension("live_grep_args")
  		end
	}

	-- telescope extensions
	use { 'fannheyward/telescope-coc.nvim' }

	-- Git stuff
	-- Fugitive
	use { 'tpope/vim-fugitive' }
	-- Lazygit
	use { 'kdheepak/lazygit.nvim' }
	-- Git blame on the current line
	use { 'APZelos/blamer.nvim' }
	-- gitsigns in the gutter
	use {
  		'lewis6991/gitsigns.nvim',
  		requires = {
    		'nvim-lua/plenary.nvim'
  		},
	}

	-- treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	-- coc intellisense
	use {'neoclide/coc.nvim', branch = 'release'}

	-- themes
	use { 'morhetz/gruvbox' }
	use { 'sainnhe/everforest' }
	use { 'vv9k/bogster' }

	if packer_bootstrap then
		require('packer').sync()
	end
end)
