vim.g.mapleader = " "
vim.o.autocomplete = false
vim.o.autoread = true
vim.o.breakindent = true
vim.o.clipboard = unnamedplus
vim.o.completeopt = "noselect,fuzzy,menuone,popup,menu"
vim.o.confirm = true
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.ignorecase = true
vim.o.infercase = true
vim.o.linebreak = true
vim.o.matchpairs = "{:},[:],(:),<:>"
vim.o.number = true
vim.plumblend = 10
vim.o.pumborder = "rounded"
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.o.smartcase = true
vim.o.splitright = true
vim.o.termguicolors = true
vim.o.winborder = "rounded"

vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(),
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
