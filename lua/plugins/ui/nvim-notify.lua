return {
	"rcarriga/nvim-notify",
	opts = {},
	config = function(_, opts)
		require("notify").setup(opts)
		vim.notify = require("notify")
	end,
}
