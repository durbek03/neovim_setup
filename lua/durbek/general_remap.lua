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

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Move selection down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down", silent = true })

-- Move selection up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up", silent = true })

vim.keymap.set("n", "<leader>z", ":%!jq<CR>", { noremap = true, silent = true })
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
