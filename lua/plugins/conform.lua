local formatters = require("fter")
return {
	"stevearc/conform.nvim",
	lazy = true,
	event = "BufWritePre",
	cmd = { "ConformInfo" },
	dependencies = {
		"neovim/nvim-lspconfig",
	},
	init = function()
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
	opts = function()
		return {
			formatters_by_ft = formatters.ft_by_type,
			format_after_save = {
				lsp_fallback = true,
			},
			formatters = formatters.config,
		}
	end,
	config = function(_, opts)
		local conform = require("conform")
		conform.setup(opts)

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				conform.format({ bufnr = args.buf })
			end,
		})
	end,
}
