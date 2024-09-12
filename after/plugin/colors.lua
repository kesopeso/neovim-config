function UseColorScheme(color)
	vim.cmd.colorscheme(color)
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none", default = true })
	-- vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none", default = true })
end

-- available: rose-pine, tokyonight
UseColorScheme("tokyonight")
