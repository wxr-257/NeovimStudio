return {
	"jinzhongjia/LspUI.nvim",
	dependencies = {
		"OXY2DEV/markview.nvim",
	},
	branch = "main",
	event = { "BufReadPost", "BufNewFile", "InsertEnter" },
	keys = {
		{ "<leader>la", "<cmd>LspUI code_action<CR>", desc = "Code Action" },
		{ "<leader>lr", "<cmd>LspUI rename<CR>", desc = "Rename" },
		{ "<leader>lh", "<cmd>LspUI hover<CR>", desc = "Hover" },
		{ "<leader>ld", "<cmd>LspUI diagnostic<CR>", desc = "Diagnostic" },
		{ "<leader>lg", "<cmd>LspUI definition<CR>", desc = "Go to Definition" },
		{ "<leader>lt", "<cmd>LspUI type_definition<CR>", desc = "Type Definition" },
		{ "<leader>lD", "<cmd>LspUI declaration<CR>", desc = "Declaration" },
		{ "<leader>lf", "<cmd>LspUI reference<CR>", desc = "Find References" },
		{ "<leader>li", "<cmd>LspUI implementation<CR>", desc = "Implementation" },
		{ "<leader>lI", "<cmd>LspUI inlay_hint<CR>", desc = "Toggle Inlay Hint" },
		{ "<leader>lc", "<cmd>LspUI call_hierarchy<CR>", desc = "Call Hierarchy" },
		{ "<leader>lj", "<cmd>LspUI history<CR>", desc = "Jump History" },
	},
	opts = {
		lightbulb = {
			enable = false,
		},
	},
}
