return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"ravitemer/codecompanion-history.nvim",
		"HakonHarnes/img-clip.nvim",
		"OXY2DEV/markview.nvim",
		"ravitemer/mcphub.nvim",
		"nvim-telescope/telescope.nvim",
		"zbirenbaum/copilot.lua",
	},
	keys = {
		{ "<leader>ii", "<cmd>CodeCompanion<cr>", mode = { "n", "v" }, desc = "CodeCompanion Inline Prompt" },
		{ "<leader>ic", "<cmd>CodeCompanionChat<cr>", desc = "CodeCompanion Open Chat Buffer" },
		{ "<leader>ia", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion Actions Palette" },
		{ "<leader>im", "<cmd>CodeCompanionCmd<cr>", desc = "CodeCompanion Interaction" },
		{ "<leader>it", "<cmd>CodeCompanionChat toggle<cr>", desc = "CodeCompanion Toggle Chat Buffer" },
	},
	config = function()
		require("codecompanion").setup({
			opts = {
				log_level = "INFO",
			},
			strategies = {
				chat = { adapter = { name = "deepseek", model = "deepseek-chat" } },
				inline = { adapter = { name = "copilot" } },
				agent = { adapter = { name = "deepseek", model = "deepseek-coder" } },
				cmd = { adapter = { name = "deepseek", model = "deepseek-coder" } },
			},
			extensions = {
				mcphub = {
					callback = "mcphub.extensions.codecompanion",
					opts = {
						make_vars = true,
						make_slash_commands = true,
						show_result_in_chat = true,
					},
				},
				history = {
					enabled = true,
					opts = {
						dir_to_save = vim.fn.stdpath("data") .. "/codecompanion_chats.json",
					},
				},
			},
		})
	end,
}
