local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local lsp_lazy_load = augroup("lsp_lazy_load", {})

local lsp_config = require("lang_lsp")
local config = require("lsp.capabilities")

for k, v in pairs(lsp_config) do
	autocmd({ "BufEnter" }, {
		pattern = v.pattern,
		callback = function()
			local setup = vim.tbl_deep_extend("force", config, v.config or {})
			vim.lsp.config(k, setup)
			vim.lsp.enable(k)
		end,
		group = lsp_lazy_load,
		once = true,
	})
end
