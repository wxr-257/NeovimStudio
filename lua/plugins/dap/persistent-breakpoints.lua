return {
	"Weissle/persistent-breakpoints.nvim",
	dependencies = {
		"mfussenegger/nvim-dap",
	},
	event = { "BufReadPost", "BufNewFile", "InsertEnter" },
	opts = {
		save_dir = vim.fn.stdpath("data") .. "/nvim_checkpoints",
	},
	init = function()
		local the_save_dir = vim.fn.stdpath("data") .. "/nvim_checkpoints"
		if vim.fn.isdirectory(the_save_dir) == 0 then
			vim.fn.mkdir(the_save_dir, "p")
		end
	end,
}
