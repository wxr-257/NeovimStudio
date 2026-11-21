return {
	"RRethy/vim-illuminate",
	event = { "BufReadPost", "BufNewFile", "InsertEnter" },
	keys = {
		{
			"]]",
			function()
				require("illuminate").goto_next_reference(true)
			end,
			desc = "illuminate: next reference",
		},
		{
			"[[",
			function()
				require("illuminate").goto_prev_reference(true)
			end,
			desc = "illuminate: prev reference",
		},
		{
			"<leader>ni",
			function()
				local illuminate = require("illuminate")
				if illuminate.is_paused() then
					illuminate.resume()
				else
					illuminate.pause()
				end
			end,
			desc = "illuminate: toggle highlight",
		},
	},
	opts = {},
	config = function(opts)
		vim.api.nvim_set_hl(0, "IlluminatedWordText", { underline = true })
		vim.api.nvim_set_hl(0, "IlluminatedWordRead", { underline = true })
		vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { underline = true })
		require("illuminate").configure(opts)
	end,
}
