return {
	"saghen/blink.cmp",
	dependencies = {
		"L3MON4D3/LuaSnip",
		"saghen/blink.lib",
		"folke/lazydev.nvim",
		"fang2hou/blink-copilot",
		"mikavilpas/blink-ripgrep.nvim",
		"moyiz/blink-emoji.nvim",
	},
	version = "*",
	event = { "InsertEnter", "CmdlineEnter" },
	build = function()
		if require("blink.cmp").build then
			require("blink.cmp").build():pwait()
		end
	end,
	opts = function()
		local cmdline_sources
		if require("blink.cmp").build then
			cmdline_sources = { default = { "cmdline", "buffer", "path" } }
		else
			cmdline_sources = { "cmdline", "buffer", "path" }
		end
		return {
			completion = {
				documentation = {
					auto_show = true,
				},
				menu = {
					auto_show = true,
				},
				keyword = {
					range = "full",
				},
				list = {
					selection = {
						preselect = false,
						auto_insert = true,
					},
				},
			},
			fuzzy = {
				sorts = { "score", "sort_text" },
				implementation = "rust",
			},
			keymap = {
				preset = "super-tab",
			},
			sources = {
				default = { "buffer", "lazydev", "lsp", "path", "snippets", "copilot", "ripgrep", "emoji" },
				providers = {
					lazydev = {
						name = "LazyDev",
						module = "lazydev.integrations.blink",
					},
					snippets = {
						score_offset = -10,
					},
					lsp = {
						score_offset = 20,
					},
					buffer = {
						score_offset = 0,
					},
					ripgrep = {
						name = "Ripgrep",
						module = "blink-ripgrep",
						async = true,
						score_offset = 0,
					},
					copilot = {
						name = "Copilot",
						module = "blink-copilot",
						async = true,
						score_offset = 100,
					},
					emoji = {
						module = "blink-emoji",
						name = "Emoji",
						score_offset = 15,
						opts = {
							insert = true,
							trigger = function()
								return { ":" }
							end,
						},
					},
				},
			},
			cmdline = {
				enabled = true,
				keymap = {
					preset = "super-tab",
				},
				completion = {
					menu = {
						auto_show = true,
					},
					list = {
						selection = {
							preselect = false,
							auto_insert = true,
						},
					},
				},
				sources = cmdline_sources,
			},
		}
	end,
}
