return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"bwpge/lualine-pretty-path",
		"meuter/lualine-so-fancy.nvim",
		"archibate/lualine-time",
	},
	event = { "BufReadPost", "BufNewFile", "InsertEnter" },
	ft = "toggleterm",
	opts = {
		options = {
			theme = "auto",
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			disabled_filetypes = {
				"neominimap",
			},
			ignore_focus = {
				"neo-tree",
			},
		},
		extensions = {
			"neo-tree",
			"lazy",
			"mason",
			"man",
			"trouble",
		},
		sections = {
			lualine_a = {
				"mode",
			},
			lualine_b = {
				"fancy_branch",
				"fancy_diff",
			},
			lualine_c = {
				"pretty_path",
				"fancy_diagnostics",
			},
			lualine_x = {
				"fancy_macro",
				"fancy_lsp_servers",
				"filesize",
				"encoding",
				"fancy_filetype",
			},
			lualine_y = {
				"ctime",
				"cdate",
				"progress",
			},
			lualine_z = {
				"fancy_location",
			},
		},
	},
	init = function()
		vim.opt.showmode = false
		vim.opt.showcmd = true
	end,
}
