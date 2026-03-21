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
	basedpyright = {
		pattern = { "*.py", "*.pyx" },
		config = {
			analysis = {
				useTypingExtensions = true,
			},
		},
	},
	---@type LspConfig
	pyright = {
		pattern = { "*.py", "*.pyx" },
	},
	---@type LspConfig
	ruff = {
		pattern = { "*.py", "*.pyx" },
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
