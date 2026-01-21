require("durbek.remap")
require("durbek.set")
require("durbek.enable_lsp")

function ColorMyPencils(color)
    kanagawa = "kanagawa"
    gruvbox = "gruvbox"
    rose_pine = "rose-pine"
    tokyonight = "tokyonight-night"

    color = color or kanagawa
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.opt.ignorecase = true
    vim.opt.smartcase = true
end

ColorMyPencils()
