return {
	"kevinhwang91/nvim-ufo",
	dependencies = {
		"kevinhwang91/promise-async",
	},
	event = "BufReadPost",
	keys = {
		{
			"zR",
			function()
				require("ufo").openAllFolds()
			end,
			desc = "Open all folds",
		},
		{
			"zM",
			function()
				require("ufo").closeAllFolds()
			end,
			desc = "Close all folds",
		},
	},
	init = function()
		vim.o.foldcolumn = "1"
		vim.o.foldlevel = 99
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true
	end,
	opts = {
		provider_selector = function(bufnr, filetype, buftype)
			local has_lsp = #vim.lsp.get_clients({ bufnr = bufnr }) > 0
			if has_lsp then
				return { "lsp", "indent" }
			end
			return { "treesitter", "indent" }
		end,
	},
}
