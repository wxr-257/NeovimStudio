return {
	"lewis6991/gitsigns.nvim",
	event = "BufReadPost",
	keys = {
		{
			"ghn",
			function()
				require("gitsigns").nav_hunk("next")
			end,
			desc = "Next hunk",
		},
		{
			"ghp",
			function()
				require("gitsigns").nav_hunk("prev")
			end,
			desc = "Prev hunk",
		},
		{
			"<leader>ghs",
			function()
				require("gitsigns").stage_hunk()
			end,
			desc = "Stage hunk",
		},
		{
			"<leader>ghr",
			function()
				require("gitsigns").reset_hunk()
			end,
			desc = "Reset hunk",
		},
		{
			"<leader>ghp",
			function()
				require("gitsigns").preview_hunk()
			end,
			desc = "Preview hunk",
		},
		{
			"<leader>gb",
			function()
				require("gitsigns").blame_line()
			end,
			desc = "Blame line",
		},
	},
	opts = {
		signs = {
			add = { text = "+" },
			change = { text = "*" },
		},
		signs_staged = {
			add = { text = "+" },
			change = { text = "*" },
		},
		current_line_blame = true,
		current_line_blame_opts = {
			virt_text = true,
			virt_text_pos = "eol",
			delay = 500,
		},
		signcolumn = true,
		attach_to_untracked = true,
		numhl = false,
		linehl = false,
		word_diff = false,
		watch_gitdir = { follow_files = true },
	},
}
