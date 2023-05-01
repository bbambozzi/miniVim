local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {}) -- all files
vim.keymap.set('n', '<leader>g', builtin.git_files, {}) -- files inside git
vim.keymap.set('n', '<leader>ps', function() -- greps string
	builtin.grep_string({search = vim.fn.input("Grep > ")}) -- all files
end)
