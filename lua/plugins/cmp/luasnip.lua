return {
	"L3MON4D3/LuaSnip",
	dependencies = {
		"rafamadriz/friendly-snippets",
	},
	build = "make install_jsregexp",
	event = { "BufReadPost", "BufNewFile", "InsertEnter" },
	opts = {
		enable_autosnippets = true,
	},
	init = function()
		local luaSnipPath = vim.fn.stdpath("config") .. "/LuaSnip/"
		if vim.fn.isdirectory(luaSnipPath) == 0 then
			vim.fn.mkdir(luaSnipPath, "p")
		end
	end,
	config = function(_, opts)
		local luaSnipPath = vim.fn.stdpath("config") .. "/LuaSnip/"
		require("luasnip.loaders.from_lua").load({ paths = luaSnipPath })
		require("luasnip.loaders.from_vscode").lazy_load()
		require("luasnip").config.setup(opts)
	end,
}
