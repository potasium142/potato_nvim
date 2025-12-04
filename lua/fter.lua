return {
	ft_by_type = {
		lua = { "stylua" },
		c = { "clang_format" },
		cpp = { "clang_format" },
		python = { "ruff_format" },
		rust = { "rustfmt" },
		json = { "prettier" },
		markdown = { "prettier" },
		toml = { "taplo" },
	},
	config = {
		clang_format = {
			prepend_args = {
				"--style",
				"{IndentWidth: 4}",
			},
		},
		prettier = {
			options = {
				ft_parsers = {
					markdown = "md",
				},
				indent_style = "tab",
			},
		},
	},
}
