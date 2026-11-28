return {
	"y3owk1n/time-machine.nvim",
	cmd = { "TimeMachineToggle", "TimeMachinePurgeCurrent", "TimeMachinePurgeAll", "TimeMachineLogShow" },
	keys = {
		{
			"<leader>ut",
			"<cmd>TimeMachineToggle<cr>",
			desc = "[Time Machine] Toggle Tree",
		},
		{
			"<leader>ux",
			"<cmd>TimeMachinePurgeCurrent<cr>",
			desc = "[Time Machine] Purge current",
		},
		{
			"<leader>uX",
			"<cmd>TimeMachinePurgeAll<cr>",
			desc = "[Time Machine] Purge all",
		},
		{
			"<leader>ul",
			"<cmd>TimeMachineLogShow<cr>",
			desc = "[Time Machine] Show log",
		},
	},
	opts = {},
	init = function()
		local data_path = vim.fn.stdpath("data")
		local undo_dir = data_path .. "/undo"
		if vim.fn.isdirectory(undo_dir) == 0 then
			vim.fn.mkdir(undo_dir, "p")
		end
		vim.opt.undofile = true
		vim.opt.undodir = undo_dir
	end,
}
