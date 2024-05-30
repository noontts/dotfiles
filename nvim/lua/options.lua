require "nvchad.options"

-- add yours here!

local o = vim.opt

o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2

vim.o.shell = '/bin/bash'
vim.g.loaded_matchit = 1

o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.smartindent = true
o.wrap = false
o.relativenumber = true
o.backup = false
o.swapfile = false
o.termguicolors = true
o.updatetime = 50
o.timeoutlen = 500

o.incsearch = true
o.hlsearch = true
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.o.gcr = "n-v-i-c:block-Cursor";
