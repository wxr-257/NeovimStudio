return {
	"okuuva/auto-save.nvim",
	cmd = "ASToggle",
	event = { "InsertLeave", "TextChanged" },
	opts = {},
	init = function()
		vim.opt.swapfile = false
		vim.opt.backup = false
		vim.opt.writebackup = false
	end,
}
