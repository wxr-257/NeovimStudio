return {
	"isakbm/gitgraph.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
	},
	keys = {
		{
			"<leader>gl",
			function()
				require("gitgraph").draw({}, { all = true, max_count = 5000 })
			end,
			desc = "GitGraph Draw",
		},
	},
	opts = {
		hooks = {
			on_select_commit = function(commit)
				vim.cmd(":DiffviewOpen " .. commit.hash .. "^!")
			end,
			on_select_range_commit = function(from, to)
				vim.cmd(":DiffviewOpen " .. from.hash .. "~1.." .. to.hash)
			end,
		},
	},
}
