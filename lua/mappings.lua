require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>lf", "<cmd>lua vim.diagnostic.open_float() <cr>")
map("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })
