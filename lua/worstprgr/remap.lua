vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<F5>', ':!python3 %<CR>')
vim.keymap.set('n', '<F4>', ':!make<CR>')

-- Move marked lines up
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
-- Move marked lines down
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<leader>s', ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

