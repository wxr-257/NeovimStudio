return {
	"akinsho/toggleterm.nvim",
	cmd = {
		"ToggleTerm",
		"ToggleTermToggleAll",
		"ToggleTermSendCurrentLine",
		"ToggleTermSendVisualLines",
		"ToggleTermSendVisualSelection",
		"ToggleTermSetName",
	},
	keys = {
		{ "<F12>", "<cmd>ToggleTerm<CR>", desc = "Toggle Terminal" },
		{ "<leader>at", "<cmd>ToggleTerm<CR>", desc = "Toggle Terminal" },
		{ "<leader>af", "<cmd>ToggleTerm direction=float<CR>", desc = "Create Terminal (Float)" },
		{ "<leader>av", "<cmd>ToggleTerm direction=vertical<CR>", desc = "Create Terminal (Vertical)" },
		{ "<leader>ah", "<cmd>ToggleTerm direction=horizontal<CR>", desc = "Create Terminal (Horizontal)" },
		{ "<leader>ab", "<cmd>ToggleTerm direction=tab<CR>", desc = "Create Terminal (Tab)" },
		{ "<leader>ar", "<cmd>ToggleTerm dir=git_dir<CR>", desc = "Create Terminal (Git Dir)" },
	},
	opts = {
		hide_numbers = true,
		shade_terminals = true,
		start_in_insert = true,
		direction = "tab",
		float_opts = {
			border = "curved",
		},
	},
}
