require("options")
require("mapping")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--single-branch",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
})
end

vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup({
	defaults = {
		lazy = false,
	},
	checker = {
		enabled = true,
	},
	change_detection = { notify = false },
	rocks = {
		enabled = false,
	},
	spec = {
		{ import = "plugins" },
	},
	performance = {
		rtp = {
			reset = false,
		},
		disabled_plugins = {
			"gzip",
			"matchit",
			"matchparen",
			"netrwPlugin",
			"tarPlugin",
			"tohtml",
			"tutor",
			"zipPlugin",
		},
	},
})

require("autocmd")
require("customcmd")
