return {
	"smjonas/inc-rename.nvim",
	keys = {
		{
			"<leader>lp",
			function()
				return ":IncRename " .. vim.fn.expand("<cword>")
			end,
			expr = true,
			desc = "LSP incremental rename",
		},
	},
	opts = {},
}
