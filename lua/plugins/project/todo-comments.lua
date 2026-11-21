return {
	"folke/todo-comments.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	event = { "BufReadPost", "BufNewFile", "InsertEnter" },
	keys = {
		{
			"]t",
			function()
				require("todo-comments").jump_next()
			end,
			desc = "Next todo comment",
		},
		{
			"[t",
			function()
				require("todo-comments").jump_prev()
			end,
			desc = "Previous todo comment",
		},
		{ "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "Find todos" },
		{ "<leader>fT", "<cmd>TodoTrouble<cr>", desc = "Todo Trouble" },
		{ "<leader>fq", "<cmd>TodoQuickFix<cr>", desc = "Todo Quick Fix" },
		{ "<leader>fl", "<cmd>TodoLocList<cr>", desc = "Todo Loc List" },
	},
	opts = {},
}
