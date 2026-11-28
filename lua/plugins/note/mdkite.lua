return {
	"selimacerbas/mdkite.nvim",
	dependencies = {
		"selimacerbas/kitehost.nvim",
	},
	cmd = "MdKite",
	keys = {
		{ "<leader>mpo", "<cmd>MdKite start<cr>", desc = "Markdown preview start" },
		{ "<leader>mps", "<cmd>MdKite stop<cr>", desc = "Markdown preview stop" },
		{ "<leader>mpr", "<cmd>MdKite refresh<cr>", desc = "Markdown preview refresh" },
	},
	opts = {
		instance_mode = "multi",
		port = 0,
		host = "0.0.0.0",
		open_browser = true,
		mermaid_renderer = "rust",
		hooks = {
			on_start = function(url)
				vim.notify("mdkite: " .. url, vim.log.levels.INFO)
			end,
		},
	},
}
