-- exit insert mode
vim.keymap.set("i", "jk", "<Esc>")

-- open file explorer
vim.keymap.set("n", "<F2>", ":Lexplore<CR>")

-- save file
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)

-- quit file
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- move back a word
vim.keymap.set("i", "<C-b>", "<C-o>b")

-- move forward a word
vim.keymap.set("i", "<C-f>", "<C-o>w")

-- move forward a word
vim.keymap.set("i", "<C-l>", "<C-o>w")

-- move back a word
vim.keymap.set("i", "<C-h>", "<C-o>b")

-- go to end of word
vim.keymap.set("i", "<C-e>", "<C-o>e")

-- close window
vim.keymap.set("n", "<leader>q", ":close<CR>")

-- disable space key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- vertical terminal
vim.api.nvim_set_keymap('n', '<leader>vt', ':vsplit | terminal<CR>', { noremap = true, silent = true })

-- horizontal terminal
vim.api.nvim_set_keymap('n', '<leader>ht', ':split<CR>:terminal<CR>', { noremap = true, silent = true })

-- Resize with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- close buffer
vim.api.nvim_set_keymap('n', '<leader>qt', ':bd!<CR>', { noremap = true, silent = true })

-- toggle Neo-tree with leader + `
vim.keymap.set("n", "<leader>`", ":Neotree toggle<CR>")

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

