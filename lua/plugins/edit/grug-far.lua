return {
	"MagicDuck/grug-far.nvim",
	cmd = { "GrugFar", "GrugFarWithin" },
	keys = {
		{ "<leader>rp", mode = "n", "<cmd>GrugFar<CR>", desc = "New Grug-Far for the project" },
		{ "<leader>rf", mode = { "n", "v" }, "<cmd>GrugFarWithin<CR>", desc = "New Grug-Far for the file" },
	},
	opts = {},
}
