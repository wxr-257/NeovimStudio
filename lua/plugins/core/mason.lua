return {
	"mason-org/mason.nvim",
	build = ":MasonUpdate",
	cmd = { "Mason", "MasonInstall", "MasonUpdate", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
	opts = {
		max_concurrent_installers = 50,
		registries = {
			"github:mason-org/mason-registry",
			"github:nvim-java/mason-registry",
			"github:zdelv/pyrefly-mason-registry",
		},
	},
}
