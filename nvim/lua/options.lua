require("nvchad.options")

-- add yours here!

local o = vim.opt

o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.expandtab = true
o.smartindent = true

vim.o.shell = "/bin/bash"
vim.g.loaded_matchit = 1
vim.g.NERDTreeShowHidden = 1
o.wrap = false
o.relativenumber = true
o.backup = false
o.swapfile = false
o.termguicolors = true
o.updatetime = 50
o.timeoutlen = 500

o.incsearch = true
o.hlsearch = true

vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
	pattern = { "*.*" },
	desc = "save view (folds), when closing file",
	command = "mkview",
})
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	pattern = { "*.*" },
	desc = "load view (folds), when opening file",
	command = "silent! loadview",
})
-- o.cursorlineopt ='both' -- to enable cursorline!
