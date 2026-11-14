return {
	"t-troebst/perfanno.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	keys = {
		{ "<leader>plf", "<cmd>PerfLoadFlat<CR>", desc = "Load flat perf data" },
		{ "<leader>plg", "<cmd>PerfLoadCallGraph<CR>", desc = "Load call graph" },
		{ "<leader>plo", "<cmd>PerfLoadFlameGraph<CR>", desc = "Load flame graph" },
		{ "<leader>pe", "<cmd>PerfPickEvent<CR>", desc = "Pick perf event" },
		{ "<leader>pa", "<cmd>PerfAnnotate<CR>", desc = "Annotate current line" },
		{ "<leader>pf", "<cmd>PerfAnnotateFunction<CR>", desc = "Annotate function" },
		{ "<leader>pa", "<cmd>PerfAnnotateSelection<CR>", mode = "v", desc = "Annotate selection" },
		{ "<leader>pt", "<cmd>PerfToggleAnnotations<CR>", desc = "Toggle annotations" },
		{ "<leader>ph", "<cmd>PerfHottestLines<CR>", desc = "Hottest lines" },
		{ "<leader>ps", "<cmd>PerfHottestSymbols<CR>", desc = "Hottest symbols" },
		{ "<leader>pc", "<cmd>PerfHottestCallersFunction<CR>", desc = "Callers of function" },
		{ "<leader>pc", "<cmd>PerfHottestCallersSelection<CR>", mode = "v", desc = "Callers of selection" },
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
