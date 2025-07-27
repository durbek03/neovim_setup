require("durbek.remap")
require("durbek.set")

function ColorMyPencils(color)
	color = color or "kanagawa"

	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.opt.ignorecase = true
    vim.opt.smartcase = true

end

ColorMyPencils()
