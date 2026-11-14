return {
	"hedyhli/outline.nvim",
	cmd = {
		"Outline",
		"OutlineOpen",
		"OutlineFocus",
		"OutlineFocusOutline",
		"OutlineFocusCode",
		"OutlineStatus",
		"OutlineRefresh",
	},
	keys = {
		{ "<leader>ot", "<cmd>Outline<CR>", desc = "Toggle outline" },
		{ "<leader>oo", "<cmd>OutlineOpen<CR>", desc = "Open outline" },
		{ "<leader>oft", "<cmd>OutlineFocus<CR>", desc = "Focus outline" },
		{ "<leader>ofo", "<cmd>OutlineFocusOutline<CR>", desc = "Focus outline outline" },
		{ "<leader>ofc", "<cmd>OutlineFocusCode<CR>", desc = "Toggle outline code" },
		{ "<leader>os", "<cmd>OutlineStatus<CR>", desc = "Outline status" },
		{ "<leader>or", "<cmd>OutlineRefresh<CR>", desc = "Refresh outline" },
	},
	opts = {},
}
