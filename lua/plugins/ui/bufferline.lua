return {
	"akinsho/bufferline.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	cmd = {
		"BufferLineCyclePrev",
		"BufferLineCycleNext",
		"BufferLineCloseOthers",
		"BufferLineCloseLeft",
		"BufferLineCloseRight",
		"BufferLinePick",
		"BufferLinePickClose",
	},
	keys = {
		{ "<leader>bl", "<cmd>BufferLineCyclePrev<CR>", desc = "BufferLine cycle prev" },
		{ "<leader>br", "<cmd>BufferLineCycleNext<CR>", desc = "BufferLine cycle next" },
		{ "<leader>bco", "<cmd>BufferLineCloseOthers<CR>", desc = "BufferLine close others" },
		{ "<leader>bcl", "<cmd>BufferLineCloseLeft<CR>", desc = "BufferLine close left" },
		{ "<leader>bcr", "<cmd>BufferLineCloseRight<CR>", desc = "BufferLine close right" },
		{ "<leader>bp", "<cmd>BufferLinePick<CR>", desc = "BufferLine pick" },
		{ "<leader>bcp", "<cmd>BufferLinePickClose<CR>", desc = "BufferLine pick close" },
	},
	opts = {
		options = {
			numbers = "ordinal",
			diagnostics = "nvim_lsp",
			close_command = "Bdelete %d",
			right_mouse_command = "Bdelete! %d",
			diagnostics_indicator = function(_, _, diagnostics_dict, _)
				local indicator = " "
				for level, number in pairs(diagnostics_dict) do
					local symbol
					if level == "error" then
						symbol = " "
					elseif level == "warning" then
						symbol = " "
					else
						symbol = " "
					end
					indicator = indicator .. number .. symbol
				end
				return indicator
			end,
		},
	},
}
