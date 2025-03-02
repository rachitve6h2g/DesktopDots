return {
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.

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
			-- vim.cmd.colorscheme("gruvbox-material")
			-- LineNumberColors()
		end,
	},
}
