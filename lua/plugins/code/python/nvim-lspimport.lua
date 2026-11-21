return {
	"stevanmilic/nvim-lspimport",
	keys = {
		{
			"<leader>cpi",
			function()
				require("lspimport").import()
			end,
			desc = "Auto Import",
		},
	},
}
