vim.g.mapleader = " "

-- Searching
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', 'C-p', builtin.git_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>ps', function() builtin.live_grep({ default_text = vim.fn.input("Grep > ") }) end,
    { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sd', builtin.lsp_document_symbols, { desc = 'Telescope buffers' })
vim.keymap.set("n", "<leader>fw", function()
    builtin.grep_string()
end)

vim.keymap.set("n", "<leader>a", "ggVG", { noremap = true, desc = "Select all" })

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- Yanking
vim.keymap.set("n", "<leader>y", '"+y', opts) -- yank current line or motion
vim.keymap.set("v", "<leader>y", '"+y', opts) -- yank selected text in visual mode

-- Paste from system clipboard
vim.keymap.set("n", "<leader>p", '"+p', opts) -- paste after cursor
vim.keymap.set("n", "<leader>P", '"+P', opts) -- paste before cursor
vim.keymap.set("v", "<leader>p", '"+p', opts) -- replace selected with clipboard

-- Optional: Yank entire line to system clipboard
vim.keymap.set("n", "<leader>Y", '"+yy', opts)

-- Navigation
-- vim.keymap.set('n', 'gb', '<C-o>', { desc = 'Go back in jump list' })
-- vim.keymap.set('n', 'gf', '<C-i>', { desc = 'Go forward in jump list' })

vim.keymap.set("n", "<C-h>", ":vertical resize -5<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", ":vertical resize +5<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", ":resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", ":resize +2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>mm", "%!jq '.'", { noremap = true, silent = true })
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.keymap.set("n", "<leader>fl", "<cmd>FlutterLogToggle<cr>", { desc = "Toggle Flutter Log" })
vim.keymap.set("n", "<leader>fc", "<cmd>FlutterLogClear<cr>", { desc = "Toggle Flutter Log" })
vim.keymap.set("n", "<leader>fr", "<cmd>FlutterRestart<cr>", { desc = "Flutter Restart" })

-- Move selection down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down", silent = true })

-- Move selection up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up", silent = true })

