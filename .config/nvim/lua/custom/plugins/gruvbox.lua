return {
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.

			function LineNumberColors()
				vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#7daea3", bold = true })
				vim.api.nvim_set_hl(0, "LineNr", { fg = "#ddc7a1", bold = true })
				vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#d3869b", bold = true })
			end

			local options = {
				gruvbox_material_enable_italic = true,
				gruvbox_material_background = "hard",
				gruvbox_material_foreground = "mix",
				gruvbox_material_enable_bold = 1,
				gruvbox_material_transparent_background = 2,
			}
			for k, v in pairs(options) do
				vim.g[k] = v
			end
			vim.cmd.colorscheme("gruvbox-material")
			LineNumberColors()
		end,
	},
}
