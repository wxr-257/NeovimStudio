return {
	"stevearc/conform.nvim",
	event = { "BufWritePre", "InsertLeave" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>fm",
			function()
				require("conform").format()
			end,
			mode = { "n", "v" },
			desc = "Format",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			c = { "clang-format" },
			cpp = { "clang-format" },
			rust = { "rustfmt" },
			java = { "google-java-format" },
			go = { "gofumpt" },
			html = { "prettier" },
			sql = { "sqlfmt" },
			asm = { "asmfmt" },
			cmake = { "gersemi" },
		},
		formatters = {
			["clang-format"] = { prepend_args = { "--style=file" } },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
		format_on_save = {
			timeout_ms = 500,
		},
	},
	config = function(_, opts)
		require("conform").setup(opts)
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
		vim.api.nvim_exec_autocmds("User", { pattern = "ConformReady" })
	end,
}
