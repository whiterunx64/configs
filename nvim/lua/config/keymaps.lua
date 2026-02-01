vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<F2>", ":Lexplore<CR>")

vim.keymap.set("i", "<C-b>", "<C-o>b")
vim.keymap.set("i", "<C-f>", "<C-o>w")
vim.keymap.set("i", "<C-l>", "<C-o>w")
vim.keymap.set("i", "<C-h>", "<C-o>b")
vim.keymap.set("i", "<C-e>", "<C-o>e")

vim.keymap.set("n", "Q", ":close<CR>")

-- " \ht " horizontal
-- " \vt " vertical
vim.api.nvim_set_keymap('n', '<leader>vt', ':vsplit | terminal<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ht', ':split<CR>:terminal<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>qt', ':bd!<CR>', { noremap = true, silent = true })
