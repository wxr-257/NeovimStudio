return {
	"cursortab/cursortab.nvim",
	build = "cd server && go build",
	event = "InsertEnter",
	opts = {
		keymaps = {
			accept = "<C-j>",
			partial_accept = "<C-w>",
			trigger = false,
		},
		provider = {
			type = "inline",
			url = os.getenv("AI_PROVIDER_URL"),
		},
		behavior = {
			idle_completion_delay = 50,
			cursor_prediction = {
				enabled = true,
			},
		},
	},
}
