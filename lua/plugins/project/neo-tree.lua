return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim",
		"s1n7ax/nvim-window-picker",
		"nvim-tree/nvim-web-devicons",
		"DrKJeff16/project.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "<F2>", "<cmd>Neotree toggle<CR>", desc = "Toggle file explorer" },
		{ "<leader>ft", "<cmd>Neotree toggle<CR>", desc = "Toggle file explorer" },
		{ "<leader>ff", "<cmd>Neotree focus<CR>", desc = "Focus file explorer" },
	},
	opts = {
		document_symbols = {
			follow_cursor = true,
		},
		commands = {
			telescope_find = function(state)
				local node = state.tree:get_node()
				if node.type == "directory" then
					vim.cmd("Telescope md_render find_files cwd=" .. vim.fn.fnameescape(node.path))
				end
			end,
		},
		filesystem = {
			follow_current_file = {
				enabled = true,
				leave_dirs_open = true,
			},
			group_empty_dirs = true,
			window = {
				mappings = {
					["f"] = "telescope_find",
					["P"] = {
						"toggle_preview",
						config = {
							use_float = false,
							use_image_nvim = true,
						},
					},
				},
			},
			use_libuv_file_watcher = true,
		},
		close_if_last_window = true,
		popup_border_style = "rounded",
		enable_git_status = true,
		enable_diagnostics = true,
		sort_case_insensitive = true,
		sources = { "filesystem", "buffers", "git_status", "document_symbols" },
		default_source = "filesystem",
		auto_clean_after_session_restore = true,
	},
	config = function(_, opts)
		require("neo-tree").setup(opts)
		vim.api.nvim_exec_autocmds("User", { pattern = "NeotreeReady" })
	end,
}
