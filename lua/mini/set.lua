
vim.opt.nu = true -- numbering
vim.opt.relativenumber = true -- disable relative line numbers here

-- force space indents
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.smartindent = true -- always 
vim.opt.wrap = false -- disables pesky wrapping


vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir" -- don't backup, but have a large undo tree

vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true -- better search

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

