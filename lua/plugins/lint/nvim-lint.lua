return {
	"mfussenegger/nvim-lint",
	keys = {
		{
			"<leader>ll",
			function()
				require("lint").try_lint()
			end,
			desc = "Try Lint",
		},
	},
	config = function()
		require("lint").linters_by_ft = {
			markdown = { "vale" },
			yaml = { "yamllint" },
			sh = { "shellcheck" },
			dockerfile = { "hadolint" },
			python = { "ruff" },
			sql = { "sqlfluff" },
			c = { "cpplint" },
			cpp = { "cpplint" },
			lua = { "luacheck" },
			cmake = { "cmakelint" },
			json = { "jsonlint" },
		}
		vim.api.nvim_exec_autocmds("User", { pattern = "LintReady" })
	end,
}
