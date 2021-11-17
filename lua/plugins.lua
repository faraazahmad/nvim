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

	-- fzf with preview window
	use {'junegunn/fzf', run = fn['fzf#install']}
	use {'junegunn/fzf.vim'}
	
	-- treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	-- coc intellisense
	use {'neoclide/coc.nvim', branch = 'release'}

	-- themes
	use { 'joshdick/onedark.vim' }

	if packer_bootstrap then
		require('packer').sync()
	end
end)
