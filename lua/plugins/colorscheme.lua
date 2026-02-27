return {
    {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        lazy = false,
    },
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                bold = false,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    operators = false,
                    folds = false,
                },
            })
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                -- Disable background for transparency
                disable_background = true,
                -- Ensure other UI elements don't have a background if needed
                styles = {
                    transparency = true,
                    italic = false, -- Disables italics globally for all groups
                    bold = true,    -- You can keep bold if you like it, or set to false too
                },
            })
        end

    },

}
