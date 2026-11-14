return {
	"kosayoda/nvim-lightbulb",
	event = { "BufReadPost", "BufNewFile", "InsertEnter" },
	opts = {
		autocmd = {
			enabled = true,
		},
		sign = {
			enabled = true,
		},
		virtual_text = {
			enabled = false,
		},
	},
}
