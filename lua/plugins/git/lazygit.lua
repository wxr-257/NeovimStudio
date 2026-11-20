return {
	"kdheepak/lazygit.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	cmd = {
		"LazyGit",
		"LazyGitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
	keys = {
		{ "<leader>gL", "<cmd>LazyGit<CR>", desc = "LazyGit (cwd)" },
		{ "<leader>gl", "<cmd>LazyGitCurrentFile<CR>", desc = "LazyGit (current file's repo)" },
	},
	init = function()
		vim.g.lazygit_floating_window_scaling_factor = 0.9
		vim.g.lazygit_floating_window_winblend = 0
	end,
}
