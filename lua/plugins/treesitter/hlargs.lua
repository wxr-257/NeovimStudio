return {
	"m-demare/hlargs.nvim",
	event = { "BufReadPost", "BufNewFile", "InsertEnter" },
	opts = {
		paint_arg_declarations = true,
		paint_arg_usages = true,
		hl_priority = 10000,
	},
}
