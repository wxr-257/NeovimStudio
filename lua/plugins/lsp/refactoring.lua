return {
	"ThePrimeagen/refactoring.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{
			"<leader>lxr",
			function()
				require("refactoring").select_refactor()
			end,
			mode = { "n", "x" },
			desc = "Select refactor",
		},
		{
			"<leader>lxf",
			function()
				return require("refactoring").refactor("Extract Function")
			end,
			mode = "x",
			true,
			desc = "Extract Function",
		},
		{
			"<leader>lxx",
			function()
				return require("refactoring").refactor("Extract Variable")
			end,
			mode = "x",
			expr = true,
			desc = "Extract Variable",
		},
		{
			"<leader>lxi",
			function()
				return require("refactoring").refactor("Inline Variable")
			end,
			mode = { "n", "x" },
			expr = true,
			desc = "Inline Variable",
		},
	},
	opts = {},
}
