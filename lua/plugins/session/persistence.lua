return {
	"folke/persistence.nvim",
	event = "BufReadPre",
	keys = {
		{
			"<leader>qs",
			function()
				require("persistence").load()
			end,
			desc = "Restore session for current directory",
		},
		{
			"<leader>qS",
			function()
				require("persistence").select()
			end,
			desc = "Select a saved session to restore",
		},
		{
			"<leader>ql",
			function()
				require("persistence").load({ last = true })
			end,
			desc = "Restore last session",
		},
		{
			"<leader>qd",
			function()
				require("persistence").stop()
			end,
			desc = "Stop saving session on exit",
		},
	},
	opts = {
		dir = vim.fn.stdpath("state") .. "/sessions/",
		need = 1,
		branch = true,
		options = { "curdir", "folds", "help", "tabpages", "winsize", "terminal" },
	},
}
