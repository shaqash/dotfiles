vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>b', vim.cmd.Lex) 
vim.keymap.set('n', '<leader>e', vim.cmd.Ex) 
vim.keymap.set('n', '<leader>f', [[:find ]])
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>')
vim.keymap.set('n', '<leader>n', '<cmd>set number!<cr>')
vim.keymap.set('n', '<C-t>', '<cmd>bn<cr>')

-- move lines
vim.keymap.set('n', '<A-j>', "<cmd>m .+1<cr>==") 
vim.keymap.set('n', '<A-k>', "<cmd>m .-2<cr>==") 
vim.keymap.set('i', '<A-j>', "<Esc><cmd>m .+1<cr>==gi") 
vim.keymap.set('i', '<A-k>', "<Esc><cmd>m .-2<cr>==gi") 
vim.keymap.set('v', '<A-j>', [[:m '>+1<cr>gv=gv]])
vim.keymap.set('v', '<A-k>', [[:m '<-2<cr>gv=gv]]) 

-- lsp
vim.keymap.set('n', '<leader>p', vim.lsp.buf.format)
