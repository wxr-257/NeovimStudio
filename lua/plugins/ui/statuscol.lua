return {
	"luukvbaal/statuscol.nvim",
	event = { "BufReadPost", "BufNewFile", "InsertEnter" },
	config = function()
		local builtin = require("statuscol.builtin")
		local function dap_click_handler(args)
			if args.button == "l" then
				vim.cmd("DapBpToggle")
			elseif args.button == "m" then
				vim.cmd("DapBpSet")
			elseif args.button == "r" then
				vim.cmd("DapBpToggle")
			end
		end
		require("statuscol").setup({
			relculright = true,
			bt_ignore = { "nofile" },
			segments = {
				{
					sign = {
						namespace = { "gitsigns" },
						maxwidth = 1,
						colwidth = 1,
						auto = true,
					},
					click = "v:lua.ScSa",
				},
				{
					text = { builtin.foldfunc },
					click = "v:lua.ScFa",
				},
				{
					sign = {
						name = { "Dap.*" },
						maxwidth = 2,
						colwidth = 2,
						auto = true,
					},
					click = "v:lua.ScSa",
				},
				{
					sign = {
						namespace = { "diagnostic" },
						maxwidth = 1,
						colwidth = 1,
						auto = false,
					},
					click = "v:lua.ScSa",
				},
				{
					sign = {
						namespace = { "nvim%-lightbulb" },
						maxwidth = 2,
						colwidth = 2,
						auto = false,
					},
					click = "v:lua.ScSa",
				},
				{
					text = { builtin.lnumfunc },
					click = "v:lua.ScLa",
				},
				{
					text = { " " },
					click = "v:lua.ScLa",
				},
			},
			clickhandlers = {
				Lnum = function(args)
					if args.button == "l" then
						vim.cmd("DapBpToggle")
					else
						builtin.lnum_click(args)
					end
				end,
				DapBreakpoint = dap_click_handler,
				DapLogPoint = dap_click_handler,
				DapBreakpointCondition = dap_click_handler,
				DapBreakpointHitCondition = dap_click_handler,
				DapStopped = dap_click_handler,
				DapBreakpointRejected = dap_click_handler,
				["nvim%-lightbulb"] = function(args)
					local line_content = vim.api.nvim_get_current_line()
					local range = {
						start = { args.mousepos.line - 1, 0 },
						["end"] = { args.mousepos.line - 1, #line_content },
					}
					vim.lsp.buf.code_action({ range = range })
				end,
			},
		})
	end,
}
