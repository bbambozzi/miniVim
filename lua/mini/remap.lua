vim.g.mapleader = " "
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move with capital K, J

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- half space jump with center cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- half space jump with center cursor
vim.keymap.set("n", "<C-b>", "<C-b>zz") -- half space jump with center cursor
vim.keymap.set("n", "n", "nzzzv") -- search stays in the middle
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

-- leader y yanks from system
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader><leader>", vim.lsp.buf.format) -- space + f to format
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz") -- prevs stay centered
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- refactoring

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>") -- toggle nvim-treesitter

vim.keymap.set("n", "<leader>t", "<cmd>tabnew<CR>") -- Space + t creates a new tab

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>") -- saving and exitign with leader
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>") -- exiting
vim.keymap.set("n", "<leader>wq", "<cmd>wq<CR>") -- save and exit

-- zenmode
vim.api.nvim_set_keymap("n", "<leader>zz", ":ZenMode<CR>", {})
