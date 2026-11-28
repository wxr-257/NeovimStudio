return {
	"folke/twilight.nvim",
	cmd = { "Twilight", "TwilightEnable", "TwilightDisable" },
	keys = {
		{ "<leader>nt", "<cmd>Twilight<CR>", desc = "Toggle twilight" },
		{ "<leader>ne", "<cmd>TwilightEnable<CR>", desc = "Enable twilight" },
		{ "<leader>nd", "<cmd>TwilightDisable<CR>", desc = "Disable twilight" },
	},
	opts = {},
}
