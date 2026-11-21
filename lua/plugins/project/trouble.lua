return {
	"folke/trouble.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	cmd = "Trouble",
	opts = {},
	keys = {
		{ "<leader>xx", "<cmd>Trouble<cr>", desc = "Open Trouble" },
		{ "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", desc = "Project Diagnotics" },
		{ "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", desc = "This File Diagnotics" },
		{ "<leader>xt", "<cmd>Trouble todo<cr>", desc = "Project Todo List" },
		{ "<leader>xq", "<cmd>Trouble quickfix<cr>", desc = "Quickfix List" },
	},
}
