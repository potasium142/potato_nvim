return {
	{
		"lewis6991/gitsigns.nvim",
		enabled = true,
		lazy = false,
		-- version = "0.7",
		opts = {
			numhl = true,
			signs = {
				add = { text = "║" },
				change = { text = "║" },
				delete = { text = "║" },
				topdelete = { text = "▒ " },
				changedelete = { text = "▓" },
				untracked = { text = "░" },
			},
		},
	},
}
