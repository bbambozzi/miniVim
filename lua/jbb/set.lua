-- 
vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

-- force space indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false


vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- don't backup, but have a large undo tree

vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true -- better search

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
