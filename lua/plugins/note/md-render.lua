return {
	"delphinus/md-render.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope.nvim",
		"delphinus/budoux.lua",
	},
	cmd = "MdRender",
	keys = {
		{ "<leader>mr", "<Plug>(md-render-preview)", desc = "Markdown preview (toggle)" },
		{ "<leader>mt", "<Plug>(md-render-preview-tab)", desc = "Markdown preview in tab (toggle)" },
		{ "<leader>md", "<Plug>(md-render-demo)", desc = "Markdown render demo" },
	},
}
