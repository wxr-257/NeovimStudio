return {
	"HiPhish/rainbow-delimiters.nvim",
	event = { "BufReadPost", "BufNewFile", "InsertEnter" },
	main = "rainbow-delimiters.setup",
	opts = {
		strategy = {
			[""] = "rainbow-delimiters.strategy.global",
			lua = "rainbow-delimiters.strategy.local",
		},
		query = {
			[""] = "rainbow-delimiters",
			lua = "rainbow-blocks",
		},
		priority = {
			[""] = 110,
			lua = 220,
		},
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
}
