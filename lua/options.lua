vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.ruler = true
vim.opt.cursorline = true
vim.opt.showmatch = true
vim.opt.autoread = true
vim.opt.termguicolors = true
vim.opt.updatetime = 100
vim.opt.splitbelow = true
vim.opt.wildmode = "longest,full"
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.signcolumn = "yes:2"
vim.opt.ffs = "unix,dos"
vim.opt.swapfile = false
vim.opt.relativenumber = true
vim.opt.guicursor = "i-ci:ver10"
vim.opt.scrolloff = 7
vim.opt.foldenable = true
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart = 69
vim.opt.laststatus = 3
vim.opt.list = true
vim.opt.showmode = false
vim.opt.listchars = {
	tab = "| .",
	multispace = "| - ",
}
vim.opt.cmdheight = 1
vim.opt.background = "light"

vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1
vim.g.mapleader = " "

vim.opt.fillchars:append({ fold = " " })
vim.opt.formatoptions:remove({ "c", "r", "o" })
