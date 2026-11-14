return {
	"jrop/tuis.nvim",
	keys = {
		{
			"<leader>zc",
			function()
				require("tuis").choose()
			end,
			desc = "Choose a TUI",
		},
		{
			"<leader>zp",
			function()
				require("tuis").run("processes")
			end,
			desc = "Process TUI",
		},
		{
			"<leader>zs",
			function()
				require("tuis").run("systemd")
			end,
			desc = "Systemd TUI",
		},
		{
			"<leader>zn",
			function()
				require("tuis").run("lsof")
			end,
			desc = "Lsof TUI",
		},
		{
			"<leader>zl",
			function()
				require("tuis").run("lsp_manager")
			end,
			desc = "LSP Manager TUI",
		},
		{
			"<leader>zk",
			function()
				require("tuis").run("k8s")
			end,
			desc = "Kubernetes TUI",
		},
		{
			"<leader>zd",
			function()
				require("tuis").run("docker")
			end,
			desc = "Docker TUI",
		},
		{
			"<leader>zm",
			function()
				require("tuis").run("models-dev")
			end,
			desc = "Models TUI",
		},
		{
			"<leader>zg",
			function()
				require("tuis").run("github")
			end,
			desc = "Github TUI",
		},
		{
			"<leader>zh",
			function()
				require("tuis").run("hacker_news")
			end,
			desc = "Hacker News TUI",
		},
		{
			"<leader>zb",
			function()
				require("tuis").run("bitwarden")
			end,
			desc = "Bitwarden TUI",
		},
	},
}
