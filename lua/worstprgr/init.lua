require("worstprgr.remap")

vim.opt.guicursor = 'n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20'

-- Enable line numbers and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.colorcolumn = "100"

-- Set tabstop and shiftwidth to 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0
vim.opt.softtabstop = -1
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Define listchars
vim.opt.listchars = {
--    eol = "↵",
    trail = "~",
    tab = ">-",
    nbsp = "␣"
}

-- Enable 'list' option
vim.opt.list = true

vim.g.netrw_liststyle = 3

-- Rose Pine
require('rose-pine').setup({
	styles = {
		italic = false
	}
  })

require("mason").setup()
require("mason-lspconfig").setup()

require("autoclose").setup()

-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
-- delays and poor user experience
vim.opt.updatetime = 300

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appeared/became resolved
vim.opt.signcolumn = "yes"

local keyset = vim.keymap.set
-- Autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

