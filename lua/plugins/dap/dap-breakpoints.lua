return {
	"Carcuis/dap-breakpoints.nvim",
	dependencies = {
		"Weissle/persistent-breakpoints.nvim",
		"mfussenegger/nvim-dap",
	},
	keys = {
		{ "<C-F5>", "<cmd>DapBpToggle<CR>", desc = "Toggle Breakpoint" },
		{ "<leader>dbt", "<cmd>DapBpToggle<CR>", desc = "Toggle Breakpoint" },
		{ "<leader>dbS", "<cmd>DapBpSet<CR>", desc = "Set Breakpoint" },
		{ "<leader>dbsl", "<cmd>DapBpSetLogPoint<CR>", desc = "Set Log Breakpoint" },
		{ "<leader>dbsc", "<cmd>DapBpSetConditionalPoint<CR>", desc = "Set Conditional Breakpoint" },
		{ "<leader>dbsh", "<cmd>DapBpSetHitConditionPoint<CR>", desc = "Set Hit Condition Breakpoint" },
		{ "<leader>dbr", "<cmd>DapBpReveal<CR>", desc = "Reveal Breakpoint" },
		{ "<leader>dbn", "<cmd>DapBpNext<CR>", desc = "Next Breakpoint" },
		{ "<leader>dbp", "<cmd>DapBpPrev<CR>", desc = "Prev Breakpoint" },
		{ "<leader>dbe", "<cmd>DapBpEdit<CR>", desc = "Edit Breakpoint" },
		{ "<leader>dbE", "<cmd>DapBpEditAll<CR>", desc = "Edit Breakpoint All" },
		{ "<leader>dbc", "<cmd>DapBpClearAll<CR>", desc = "Clear Breakpoint All" },
	},
	event = { "BufReadPost", "BufNewFile", "InsertEnter" },
	opts = {
		auto_load = true,
		auto_save = true,
		virtual_text = {
			enabled = true,
		},
	},
}
