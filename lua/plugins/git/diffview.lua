return {
	"sindrets/diffview.nvim",
	cmd = { "DiffviewOpen", "DiffviewFileHistory" },
	keys = {
		{ "<leader>gd", "<cmd>DiffviewOpen<CR>", desc = "Open Diffview" },
		{ "<leader>gf", "<cmd>DiffviewFileHistory %<CR>", desc = "File History" },
	},
}
