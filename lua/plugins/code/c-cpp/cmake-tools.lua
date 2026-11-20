return {
	"Civitasv/cmake-tools.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	cmd = { "CMakeGenerate", "CMakeBuild", "CMakeRun", "CMakeClean" },
	ft = "cmake",
	opts = {
		cmake_regenerate_on_save = true,
		cmake_build_directory = "build",
		cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
	},
	keys = {
		{ "<leader>cccc", "<cmd>CMakeClean<cr>", desc = "CMake Clean" },
		{ "<leader>cccg", "<cmd>CMakeGenerate<cr>", desc = "CMake Generate" },
		{ "<leader>cccb", "<cmd>CMakeBuild<cr>", desc = "CMake Build" },
		{ "<leader>cccr", "<cmd>CMakeRun<cr>", desc = "CMake Run" },
		{ "<leader>cccd", "<cmd>CMakeDebug<cr>", desc = "CMake Debug" },
		{ "<leader>cccsl", "<cmd>CMakeSelectLaunchTarget<cr>", desc = "CMake Select Target" },
		{ "<leader>cccst", "<cmd>CMakeSelectBuildTarget<cr>", desc = "CMake Select Build Target" },
		{ "<leader>cccsk", "<cmd>CMakeSelectKit<cr>", desc = "CMake Select Kit" },
		{ "<leader>cccsp", "<cmd>CMakeSelectBuildPreset<cr>", desc = "CMake Select Build Preset" },
	},
}
