return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>ps', function() builtin.live_grep() end,
            { noremap = true, silent = true })
        vim.keymap.set('n', '<leader>sd', builtin.lsp_document_symbols, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>pb', ":Telescope buffers sort_mru=true ignore_current_buffer=true<CR>", { desc = 'Telescope buffers' })
        vim.keymap.set("n", "<leader>fw", function()
            builtin.grep_string()
        end)
    end
}
