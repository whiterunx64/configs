-- Basic settings
vim.opt.compatible = false
vim.opt.viminfo = ""
vim.opt.termguicolors = true 

-- Tabs
vim.opt.expandtab = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- Clear search highlight on Enter
vim.keymap.set("n", "<CR>", ":noh<CR><CR>")

-- Backup / swap
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

-- Wildmenu
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full"
vim.opt.wildignore = {
  "*.docx","*.jpg","*.png","*.gif","*.pdf",
  "*.pyc","*.exe","*.flv","*.img","*.xlsx"
}

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true


