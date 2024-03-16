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
  -- It needs gcc installed. On Windows use "minggw" @ https://github.com/niXman/mingw-builds-binaries/releases
  -- After that, register it in PATH
  -- After install run: :TSInstall asm bash c css csv dockerfile html javascript json lua make markdown nasm python rust sql

  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use('mg979/vim-visual-multi', { branch = 'master' })

  -- Coc-clangd needs clang installed. On Windows, use https://github.com/clangd/clangd/releases/tag/17.0.3
  -- Coc-rust-analyzer needs rust-analyzer installed. Use the command "rustup component add rust-analyzer" and add it (on Windows) to PATH
  -- COC needs nodejs: https://nodejs.org/en/download/
  use {'neoclide/coc.nvim', branch = 'release'}
  -- After COC installed, install LSPs:
  -- :CocInstall coc-json coc-tsserver coc-pyright coc-rust-analyzer coc-clangd coc-sh coc-html coc-sumneko-lua
end)
