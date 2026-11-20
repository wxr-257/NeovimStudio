return {
	"t-troebst/perfanno.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	keys = {
		{ "<leader>ccplf", "<cmd>PerfLoadFlat<CR>", desc = "Load flat perf data" },
		{ "<leader>ccplg", "<cmd>PerfLoadCallGraph<CR>", desc = "Load call graph" },
		{ "<leader>ccplo", "<cmd>PerfLoadFlameGraph<CR>", desc = "Load flame graph" },
		{ "<leader>ccpe", "<cmd>PerfPickEvent<CR>", desc = "Pick perf event" },
		{ "<leader>ccpa", "<cmd>PerfAnnotate<CR>", desc = "Annotate current line" },
		{ "<leader>ccpf", "<cmd>PerfAnnotateFunction<CR>", desc = "Annotate function" },
		{ "<leader>ccpa", "<cmd>PerfAnnotateSelection<CR>", mode = "v", desc = "Annotate selection" },
		{ "<leader>ccpt", "<cmd>PerfToggleAnnotations<CR>", desc = "Toggle annotations" },
		{ "<leader>ccph", "<cmd>PerfHottestLines<CR>", desc = "Hottest lines" },
		{ "<leader>ccps", "<cmd>PerfHottestSymbols<CR>", desc = "Hottest symbols" },
		{ "<leader>ccpc", "<cmd>PerfHottestCallersFunction<CR>", desc = "Callers of function" },
		{ "<leader>ccpc", "<cmd>PerfHottestCallersSelection<CR>", mode = "v", desc = "Callers of selection" },
	},
	config = function()
		local perfanno = require("perfanno")
		local util = require("perfanno.util")

		perfanno.setup({
			line_highlights = util.make_bg_highlights(nil, "#CC3300", 10),
			vt_highlight = util.make_fg_highlight("#CC3300"),
		})
	end,
}
