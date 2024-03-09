-- Install Packer: https://github.com/wbthomason/packer.nvim?tab=readme-ov-file#quickstart
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Install Dep for telescope: https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation
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
  -- After install run: :TSInstall asm bash c css csv dockerfile html javascript json lua make markdown nasm python rust sql

  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use('mg979/vim-visual-multi', { branch = 'master' })

  -- COC needs nodejs: https://nodejs.org/en/download/
  use {'neoclide/coc.nvim', branch = 'release'}
  -- After COC installed, install LSPs:
  -- :CocInstall coc-json coc-tsserver coc-pyright coc-rls coc-clangd coc-sh coc-html coc-sumneko-lua
  -- If clangd isn't found, run: :CocCommand clangd.install
end)
