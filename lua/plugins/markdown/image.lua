return {
	"3rd/image.nvim",
	event = { "BufReadPre" },
	opts = {
		processor = "magick_cli",
		integrations = {
			markdown = {
				enabled = true,
				floating_windows = true,
			},
		},
	},
}
