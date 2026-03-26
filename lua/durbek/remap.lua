vim.g.mapleader = " "

vim.keymap.set("n", "<leader>a", "ggVG", { noremap = true, desc = "Select all" })
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- Yanking
vim.keymap.set("n", "<leader>y", '"+y') -- yank current line or motion
vim.keymap.set("v", "<leader>y", '"+y') -- yank selected text in visual mode

-- Paste from system clipboard
vim.keymap.set("n", "<leader>p", '"+p') -- paste after cursor
vim.keymap.set("n", "<leader>P", '"+P') -- paste before cursor
vim.keymap.set("v", "<leader>p", '"+p') -- replace selected with clipboard

-- Optional: Yank entire line to system clipboard
vim.keymap.set("n", "<leader>Y", '"+yy')

vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- formatting
vim.keymap.set("n", "<leader>z", ":%!jq<CR>", { noremap = true, silent = true })

-- exit vim in terminal mode
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

-- buffer mappings
vim.keymap.set("n", "<leader>j", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>k", ":bprevious<CR>", { desc = "Previous buffer" })

vim.keymap.set("n", "<leader>l", "<C-^>", { desc = "Last buffer" })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete current buffer and go to next" })
vim.keymap.set("n", '<leader>ss', ":rightbelow vsplit #<CR>", {desc = "Splitting"})
