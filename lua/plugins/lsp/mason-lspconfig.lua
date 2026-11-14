return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"mason-org/mason.nvim",
	},
	event = "User LspReady",
	opts = {
		auto_install = true,
		ensure_installed = {
			"asm_lsp",
			"basedpyright",
			"clangd",
			"codebook",
			"cssls",
			"html",
			"htmx",
			"jsonls",
			"lexical",
			"lua_ls",
			"neocmake",
			"powershell_es",
			"postgres_lsp",
			"qmlls",
			"rust_analyzer",
			"yamlls",
		},
	},
	config = function(_, opts)
		require("mason-lspconfig").setup(opts)

		vim.lsp.config("clangd", {
			cmd = {
				"clangd",
				"--background-index",
				"--clang-tidy",
				"--header-insertion=never",
			},
		})

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		local blinkOk, blink = pcall(require, "blink.cmp")
		if blinkOk then
			capabilities = vim.tbl_deep_extend("force", capabilities, blink.get_lsp_capabilities())
		end
		local fileOperationsOk, fileOperations = pcall(require, "nvim-file-operations.config")
		if fileOperationsOk then
			capabilities = vim.tbl_deep_extend("force", capabilities, fileOperations.default_capabilities())
		end
		vim.lsp.config("*", {
			capabilities = capabilities,
			flags = {
				debounce_text_changes = 500,
			},
		})
	end,
}
