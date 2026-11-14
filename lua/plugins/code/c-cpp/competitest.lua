return {
	"xeluxee/competitest.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{ "<leader>ka", ":CompetiTest add_testcase<CR>", desc = "Add a testcase" },
		{ "<leader>ke", ":CompetiTest edit_testcase<CR>", desc = "Edit a testcase" },
		{ "<leader>kd", ":CompetiTest delete_testcase<CR>", desc = "Delete a testcase" },
		{ "<leader>kr", ":CompetiTest run<CR>", desc = "Test with testcase" },
	},
	opts = {
		compile_directory = ".",
		running_directory = ".",
		testcases_directory = "./.testdata",
		testcases_use_single_file = true,
	},
}
