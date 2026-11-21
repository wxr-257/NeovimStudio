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
}
