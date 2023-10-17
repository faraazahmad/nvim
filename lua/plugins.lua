-- install packer if not present
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- autorun PackerCompile when this file is modified
vim.cmd([[
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

	-- Language specific plugins
	use { 'vim-ruby/vim-ruby' }
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

	-- nvim lsp stuff
	use {
  		'VonHeikemen/lsp-zero.nvim',
  		branch = 'v3.x',
  		requires = {
    
    		{'williamboman/mason.nvim'},           
    		{'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
    		{'neovim/nvim-lspconfig'},    -- Required

    		-- Autocompletion
	    	{'hrsh7th/nvim-cmp'},         -- Required
    		{'hrsh7th/cmp-nvim-lsp'},     -- Required
	    	{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
		    {'saadparwaiz1/cmp_luasnip'}, -- Optional
		    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    		-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
    		{'rafamadriz/friendly-snippets'}, -- Optional
  		}
	}

	-- themes
	use { 'morhetz/gruvbox' }
	use { 'sainnhe/everforest' }
	use { 'vv9k/bogster' }

	if packer_bootstrap then
		require('packer').sync()
	end
end)
