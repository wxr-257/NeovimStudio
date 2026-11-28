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
	cmd = { "CodeCompanion", "CodeCompanionChat", "CodeCompanionActions", "CodeCompanionCmd" },
	keys = {
		{ "<leader>ii", "<cmd>CodeCompanion<CR>", mode = { "n", "v" }, desc = "CodeCompanion Inline Prompt" },
		{ "<leader>ic", "<cmd>CodeCompanionChat<CR>", desc = "CodeCompanion Open Chat Buffer" },
		{ "<leader>ia", "<cmd>CodeCompanionActions<CR>", desc = "CodeCompanion Actions Palette" },
		{ "<leader>im", "<cmd>CodeCompanionCmd<CR>", desc = "CodeCompanion Interaction" },
		{ "<leader>it", "<cmd>CodeCompanionChat toggle<CR>", desc = "CodeCompanion Toggle Chat Buffer" },
	},
	opts = {
		opts = {
			log_level = "INFO",
			language = "Chinese",
		},
		interactions = {
			chat = "deepseek",
			inline = "copilot",
			agent = "deepseek",
			cmd = "deepseek",
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
	},
}
