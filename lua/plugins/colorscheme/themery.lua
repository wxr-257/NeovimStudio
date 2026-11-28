return {
	"zaldih/themery.nvim",
	lazy = false,
	priority = 1000,
	cmd = { "Themery" },
	keys = {
		{ "<leader>ns", "<cmd>Themery<CR>", desc = "Choose Colorscheme" },
	},
	opts = {
		themes = vim.fn.getcompletion("", "color"),
		livePreview = true,
	},
}
