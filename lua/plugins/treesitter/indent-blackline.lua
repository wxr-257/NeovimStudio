return {
	"lukas-reineke/indent-blankline.nvim",
	dependencies = {
		"HiPhish/rainbow-delimiters.nvim",
	},
	event = { "BufReadPost", "BufNewFile", "InsertEnter" },
	main = "ibl",
	opts = {
		indent = {
			highlight = {
				"RainbowDelimiterRed",
				"RainbowDelimiterYellow",
				"RainbowDelimiterBlue",
				"RainbowDelimiterOrange",
				"RainbowDelimiterGreen",
				"RainbowDelimiterViolet",
				"RainbowDelimiterCyan",
			},
		},
		exclude = {
			filetypes = {
				"dashboard",
				"alpha",
				"lspinfo",
				"packer",
				"checkhealth",
				"help",
				"man",
			},
		},
	},
}
