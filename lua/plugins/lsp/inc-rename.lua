return {
	"smjonas/inc-rename.nvim",
	event = "LspAttach",
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
