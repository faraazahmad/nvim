local fn = vim.fn
local cmd = vim.cmd


-- install packer if not present
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

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
	-- use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
	--use {'junegunn/fzf.vim'}
	
	-- treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	-- themes
	use { 'morhetz/gruvbox' }
	use { 'sonph/onehalf', rtp = 'vim'}

	if packer_bootstrap then
		require('packer').sync()
	end
end)
