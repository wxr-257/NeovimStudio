return {
	"DrKJeff16/project.nvim",
	dependencies = {
		"xieyonn/spinner.nvim",
	},
	event = { "CmdlineEnter", "BufReadPost", "BufNewFile", "InsertEnter" },
	opts = {
		manual_mode = false,
		detection_methods = { "lsp", "pattern" },
		patterns = { ".git", ".env", ".venv", "env" },
		show_hidden = false,
		silent_chdir = true,
		scope_chdir = "global",
		history = {
			save_dir = vim.fn.stdpath("data"),
		},
		spinner = {
			enabled = true,
			opts = {
				kind = "cursor",
			},
		},
	},
}
