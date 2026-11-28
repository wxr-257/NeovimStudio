return {
	"nosduco/remote-sshfs.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
	},
	cmd = { "RemoteSSHFSConnect", "RemoteSSHFSFindFiles", "RemoteSSHFSLiveGrep", "RemoteSSHFSDisconnect" },
	keys = {
		{ "<leader>frs", "<cmd>RemoteSSHFSConnect<cr>", desc = "SSHFS: Connect" },
		{ "<leader>frf", "<cmd>RemoteSSHFSFindFiles<cr>", desc = "SSHFS: Find files (remote fd)" },
		{ "<leader>frg", "<cmd>RemoteSSHFSLiveGrep<cr>", desc = "SSHFS: Live grep (remote rg)" },
		{ "<leader>fru", "<cmd>RemoteSSHFSDisconnect<cr>", desc = "SSHFS: Disconnect" },
	},
	opts = {},
}
