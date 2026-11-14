return {
	"folke/flash.nvim",
	opts = {},
	keys = {
		{
			"<leader>js",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump()
			end,
			desc = "Flash words",
		},
		{
			"<leader>jS",
			mode = { "n", "x", "o" },
			function()
				require("flash").treesitter()
			end,
			desc = "Flash Treesitter",
		},
		{
			"<leader>jl",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump({
					search = { mode = "search" },
					jump = { pos = "start" },
					label = { after = false, before = false },
				})
			end,
			desc = "Flash line",
		},
		{
			"<leader>js",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump({
					search = { mode = "search" },
					jump = { pos = "start" },
				})
			end,
			desc = "Flash line start",
		},
		{
			"<leader>j/",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump({ search = { mode = "search" } })
			end,
			desc = "Flash pattern",
		},
		{
			"<leader>jr",
			function()
				require("flash").remote()
			end,
			desc = "Remote Flash",
		},
		{
			"<leader>jR",
			mode = { "n", "x", "o" },
			function()
				require("flash").treesitter_search()
			end,
			desc = "Flash Treesitter Search",
		},
		{
			"<leader>jt",
			mode = { "n", "x", "o" },
			function()
				require("flash").toggle()
			end,
			desc = "Toggle Flash Search",
		},
	},
}
