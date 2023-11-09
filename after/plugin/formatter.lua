-- utilities for creating configurations
local util = require("formatter.util")

require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = {
			-- 'formatter.filetypes.lua' defines default config for lua filetype
			-- and so on for every other plugin
			require("formatter.filetypes.lua").stylua,
		},
		yaml = {
			require("formatter.filetypes.yaml").prettier,
		},
		markdown = {
			require("formatter.filetypes.markdown").prettier,
		},
		json = {
			require("formatter.filetypes.json").prettier,
		},
		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},
		javascriptreact = {
			require("formatter.filetypes.javascriptreact").prettier,
		},
		typescript = {
			require("formatter.filetypes.typescript").prettier,
		},
		typescriptreact = {
			require("formatter.filetypes.typescriptreact").prettier,
		},
		-- this is a special file type configuration for any file type
		-- commented out for now, since prettier can remove trailing whitespace
		--["*"] = {
		--	function()
		--		if util.get_current_buffer_file_extension() == "md" then
		--			return nil
		--		end
		--		return require("formatter.filetypes.any").remove_trailing_whitespace()
		--	end,
		--},
	},
})

vim.cmd([[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost * FormatWrite
  augroup END
]])

vim.keymap.set("n", "<leader>f", ":Format<CR>", { noremap = true, silent = true })
