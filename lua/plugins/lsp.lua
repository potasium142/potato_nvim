local opts = { noremap = true, silent = true }

return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			vim.diagnostic.config({
				underline = false,
				virtual_text = false,
				virtual_lines = { current_line = true },
				severity_sort = true,
			})
		end,
		keys = function()
			local buf = vim.lsp.buf
			local diag = vim.diagnostic
			return {
				{
					"<leader>ca",
					buf.code_action,
					opts,
				},
				{
					"[d",
					-- diag.goto_prev,
					function()
						diag.jump({ count = -1, float = true })
					end,
					opts,
				},
				{
					"<leader>rn",
					buf.rename,
					opts,
				},
				{
					"K",
					buf.hover,
					opts,
				},
				{
					"<leader>rf",
					buf.references,
					opts,
				},
				{
					"]d",
					-- diag.goto_next,
					function()
						diag.jump({ count = 1, float = true })
					end,
					opts,
				},
			}
		end,
	},
}
