return {
	"rshkarin/mason-nvim-lint",
	dependencies = {
		"mfussenegger/nvim-lint",
		"mason-org/mason.nvim",
	},
	event = "User LintReady",
	opts = {
		automatic_installation = true,
	},
}
