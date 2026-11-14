return {
	"mfussenegger/nvim-dap",
	keys = {
		{
			"<F5>",
			function()
				require("dap").continue()
			end,
			desc = "Debug Continue",
		},
		{
			"<F6>",
			function()
				require("dap").step_over()
			end,
			desc = "Debug Step Over",
		},
		{
			"<F7>",
			function()
				require("dap").step_into()
			end,
			desc = "Debug Step Into",
		},
		{
			"<F8>",
			function()
				require("dap").step_out()
			end,
			desc = "Debug Step Out",
		},
		{
			"<leader>dc",
			function()
				require("dap").continue()
			end,
			desc = "Debug Continue",
		},
		{
			"<leader>dv",
			function()
				require("dap").step_over()
			end,
			desc = "Debug Step Over",
		},
		{
			"<leader>di",
			function()
				require("dap").step_into()
			end,
			desc = "Debug Step Into",
		},
		{
			"<leader>do",
			function()
				require("dap").step_out()
			end,
			desc = "Debug Step Out",
		},
	},
	opts = {},
	config = function()
		vim.fn.sign_define("DapBreakpoint", { text = "🔴", texthl = "", linehl = "", numhl = "" })
		vim.fn.sign_define("DapBreakpointCondition", { text = "🟡", texthl = "", linehl = "", numhl = "" })
		vim.fn.sign_define("DapBreakpointHitCondition", { text = "⏺️", texthl = "", linehl = "", numhl = "" })
		vim.fn.sign_define("DapLogPoint", { text = "📝", texthl = "", linehl = "", numhl = "" })
		vim.fn.sign_define("DapStopped", { text = "▶️", texthl = "", linehl = "", numhl = "" })
		vim.fn.sign_define("DapBreakpointRejected", { text = "🚫", texthl = "", linehl = "", numhl = "" })
		vim.api.nvim_exec_autocmds("User", { pattern = "DapReady" })
	end,
}
