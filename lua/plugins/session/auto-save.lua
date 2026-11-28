return {
	"okuuva/auto-save.nvim",
	cmd = "ASToggle",
	event = { "InsertLeave", "TextChanged" },
	keys = {
		{ "<leader>fs", "<cmd>ASToggle<CR>", desc = "Auto Save Toggle" },
	},
	opts = {},
	init = function()
		vim.opt.swapfile = false
		vim.opt.backup = false
		vim.opt.writebackup = false
	end,
}
