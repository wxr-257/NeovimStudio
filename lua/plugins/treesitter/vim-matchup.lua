return {
	"andymass/vim-matchup",
	event = { "BufReadPost", "BufNewFile", "InsertEnter" },
	opts = {
		treesitter = {
			stopline = 500,
		},
	},
}
