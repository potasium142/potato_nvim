return {
	---@type LspConfig
	lua_ls = {
		pattern = { "*.lua" },
		config = {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		},
	},
	---@type LspConfig
	pyright = {
		pattern = { "*.py" },
	},
	---@type LspConfig
	ruff = {
		pattern = { "*.py" },
	},
	---@type LspConfig
	rust_analyzer = {
		pattern = { "*.rs" },
		config = {
			capabilities = {
				semanticTokensProvider = nil,
				textDocument = {
					semanticTokens = nil,
				},

				workspace = {
					semanticTokens = nil,
				},
			},
		},
	},
}
