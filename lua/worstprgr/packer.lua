vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSupdate'})
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use('mg979/vim-visual-multi', { branch = 'master' })
  use {'neoclide/coc.nvim', branch = 'release'}
end)
