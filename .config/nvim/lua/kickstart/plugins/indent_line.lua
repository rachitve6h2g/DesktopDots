return {
	{ -- Add indentation guides even on blank lines
		"lukas-reineke/indent-blankline.nvim",
		dependencies = {
			{ "HiPhish/rainbow-delimiters.nvim" },
		},
		-- Enable `lukas-reineke/indent-blankline.nvim`
		-- See `:help ibl`
		main = "ibl",
		opts = function()
			local highlight = {
				"RainbowRed",
				"RainbowYellow",
				"RainbowBlue",
				"RainbowOrange",
				"RainbowGreen",
				"RainbowViolet",
				"RainbowCyan",
			}
			local hooks = require("ibl.hooks")
			-- create the highlight groups in the highlight setup hook,
			-- everytime the colorscheme changes
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#ea6962" })
				vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#d8a657" })
				vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#7daea3" })
				vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#e78a4e" })
				vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#a9b665" })
				vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#d3869b" })
				vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#89b482" })
			end)

			vim.g.rainbow_delimiters = { highlight = highlight }
			return {
				scope = {
					highlight = highlight,
					show_start = false,
					show_end = false,
				},
			}
		end,
	},
}
