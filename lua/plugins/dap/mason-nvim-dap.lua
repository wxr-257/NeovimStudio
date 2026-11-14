return {
	"jay-babu/mason-nvim-dap.nvim",
	dependencies = {
		"mason-org/mason.nvim",
		"mfussenegger/nvim-dap",
	},
	event = "User DapReady",
	config = function()
		local adapters = {
			"python",
			"codelldb",
			"bash",
		}
		local the_handlers = {}
		for _, adapter in ipairs(adapters) do
			the_handlers[adapter] = require("mason-nvim-dap").default_setup
		end
		require("mason-nvim-dap").setup({
			ensure_installed = adapters,
			automatic_installation = true,
			handlers = the_handlers,
		})
	end,
}
