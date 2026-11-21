return {
	"saecki/crates.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{
			"<leader>crct",
			function()
				require("crates").toggle()
			end,
			desc = "Toggle crates info",
		},
		{
			"<leader>crcr",
			function()
				require("crates").reload()
			end,
			desc = "Reload crates info",
		},
		{
			"<leader>crcp",
			function()
				require("crates").show_popup()
			end,
			desc = "Show crate info popup",
		},
		{
			"<leader>crcv",
			function()
				require("crates").show_versions_popup()
			end,
			desc = "Show crate versions",
		},
		{
			"<leader>crcf",
			function()
				require("crates").show_features_popup()
			end,
			desc = "Show crate features",
		},
		{
			"<leader>crcd",
			function()
				require("crates").show_dependencies_popup()
			end,
			desc = "Show crate dependencies",
		},
		{
			"<leader>crcu",
			function()
				require("crates").update_crate()
			end,
			desc = "Update crate (semver compatible)",
		},
		{
			"<leader>crca",
			function()
				require("crates").update_all_crates()
			end,
			desc = "Update all crates",
		},
		{
			"<leader>crcU",
			function()
				require("crates").upgrade_crate()
			end,
			desc = "Upgrade crate to latest version",
		},
		{
			"<leader>crcA",
			function()
				require("crates").upgrade_all_crates()
			end,
			desc = "Upgrade all crates to latest",
		},
		{
			"<leader>crco",
			function()
				require("crates").open_cratesio()
			end,
			desc = "Open crate on crates.io",
		},
		{
			"<leader>crcO",
			function()
				require("crates").open_docs_rs()
			end,
			desc = "Open crate on docs.rs",
		},
		{
			"<leader>crcx",
			function()
				require("crates").open_repository()
			end,
			desc = "Open crate repository",
		},
		{
			"<leader>crcu",
			function()
				require("crates").update_crates()
			end,
			desc = "Update selected crates",
			mode = "v",
		},
		{
			"<leader>crcU",
			function()
				require("crates").upgrade_crates()
			end,
			desc = "Upgrade selected crates",
			mode = "v",
		},
	},
	opts = {},
}
