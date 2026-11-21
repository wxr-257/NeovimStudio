return {
	"mrcjkb/rustaceanvim",
	ft = { "rust" },
	keys = {
		{
			"<leader>crrh",
			function()
				vim.cmd.RustLsp("hover", "actions")
			end,
			desc = "Show hover actions",
		},
		{
			"<leader>crrm",
			function()
				vim.cmd.RustLsp("expandMacro")
			end,
			desc = "Expand macro recursively",
		},
		{
			"<leader>crrr",
			function()
				vim.cmd.RustLsp("run")
			end,
			desc = "Run binary/test at cursor",
		},
		{
			"<leader>crrd",
			function()
				vim.cmd.RustLsp("debug")
			end,
			desc = "Debug binary/test at cursor",
		},
		{
			"<leader>crrt",
			function()
				vim.cmd.RustLsp("testables", "run")
			end,
			desc = "Run test at cursor",
		},
		{
			"<leader>crrT",
			function()
				vim.cmd.RustLsp("testables", "run", "file")
			end,
			desc = "Run all tests in file",
		},
		{
			"<leader>crrp",
			function()
				vim.cmd.RustLsp("parentModule")
			end,
			desc = "Jump to parent module",
		},
		{
			"<leader>crro",
			function()
				vim.cmd.RustLsp("openCargo")
			end,
			desc = "Open Cargo.toml",
		},
		{
			"<leader>crre",
			function()
				vim.cmd.RustLsp("explainError")
			end,
			desc = "Explain current error",
		},
		{
			"<leader>crrb",
			function()
				vim.cmd.RustLsp("rebuildProcMacros")
			end,
			desc = "Rebuild procedural macros",
		},
		{
			"<leader>crrk",
			function()
				vim.cmd.RustLsp("moveItem", "up")
			end,
			desc = "Move item up",
		},
		{
			"<leader>crrj",
			function()
				vim.cmd.RustLsp("moveItem", "down")
			end,
			desc = "Move item down",
		},
		{
			"<leader>crrJ",
			function()
				vim.cmd.RustLsp("joinLines")
			end,
			desc = "Join lines intelligently",
		},
		{
			"<leader>crrr",
			function()
				vim.cmd.RustLsp("run")
			end,
			desc = "Run selected code",
			mode = "v",
		},
	},
}
