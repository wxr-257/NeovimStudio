return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"kkharji/sqlite.lua",
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"rcarriga/nvim-notify",
		"debugloop/telescope-undo.nvim",
		"nvim-telescope/telescope-dap.nvim",
		"polirritmico/telescope-lazy-plugins.nvim",
		"nvim-telescope/telescope-project.nvim",
		"mrloop/telescope-git-branch.nvim",
		"smartpde/telescope-recent-files",
		"jvgrootveld/telescope-zoxide",
		"delphinus/md-render.nvim",
		"nvim-telescope/telescope-frecency.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release --target install",
		},
	},
	cmd = "Telescope",
	opts = {
		extensions = {
			fzf = {
				fuzzy = true,
				override_generic_sorter = true,
				override_file_sorter = true,
				case_mode = "smart_case",
			},
		},
	},
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)
		telescope.load_extension("fzf")
		telescope.load_extension("notify")
		telescope.load_extension("undo")
		telescope.load_extension("dap")
		telescope.load_extension("lazy_plugins")
		telescope.load_extension("project")
		telescope.load_extension("git_branch")
		telescope.load_extension("recent_files")
		telescope.load_extension("zoxide")
		telescope.load_extension("md_render")
		telescope.load_extension("frecency")
	end,
}
