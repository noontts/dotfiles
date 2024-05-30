require "nvchad.mappings"

-- add yours here
local unmap = vim.keymap.del
unmap("n", "<C-n>")
unmap("n", "<leader>e")


local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Telescope
map("n", "<leader>fg", ":Telescope live_grep<cr>")

-- nvimtree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<C-n>", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })
-- Open Float
map("n", "<leader>of", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "Open float diagnostic" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
