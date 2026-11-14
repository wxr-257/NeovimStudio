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
		{ "<F9>", "<cmd>CMakeBuild<cr>", desc = "CMake Build" },
		{ "<F10>", "<cmd>CMakeRun<cr>", desc = "CMake Run" },
		{ "<F11>", "<cmd>CMakeDebug<cr>", desc = "CMake Debug" },
		{ "<leader>cc", "<cmd>CMakeClean<cr>", desc = "CMake Clean" },
		{ "<leader>cg", "<cmd>CMakeGenerate<cr>", desc = "CMake Generate" },
		{ "<leader>cb", "<cmd>CMakeBuild<cr>", desc = "CMake Build" },
		{ "<leader>cr", "<cmd>CMakeRun<cr>", desc = "CMake Run" },
		{ "<leader>cd", "<cmd>CMakeDebug<cr>", desc = "CMake Debug" },
		{ "<leader>csl", "<cmd>CMakeSelectLaunchTarget<cr>", desc = "CMake Select Target" },
		{ "<leader>cst", "<cmd>CMakeSelectBuildTarget<cr>", desc = "CMake Select Build Target" },
		{ "<leader>csk", "<cmd>CMakeSelectKit<cr>", desc = "CMake Select Kit" },
		{ "<leader>csp", "<cmd>CMakeSelectBuildPreset<cr>", desc = "CMake Select Build Preset" },
	},
}
