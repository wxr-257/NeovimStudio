return {
	"OXY2DEV/markview.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-mini/mini.icons",
	},
	cmd = { "Markview" },
	ft = { "markdown", "codecompanion" },
	keys = {
		{ "<leader>mv", "<cmd>Markview toggle<CR>", desc = "Toggle Markdown View" },
	},
	opts = {
		preview = {
			filetypes = { "markdown", "codecompanion" },
			ignore_buftypes = {},
		},
	},
	config = function(_, opts)
		require("markview").setup(opts)
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "markdown",
			callback = function(args)
				if vim.bo[args.buf].buftype == "nofile" then
					require("markview").commands.attach(args.buf)
				end
			end,
		})
	end,
}
