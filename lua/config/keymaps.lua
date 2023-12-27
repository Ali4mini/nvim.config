-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map(
    "n",
    "<leader>fD",
    "<cmd>call delete(expand('%')) | bdelete!<cr>",
    { desc = "delete file and close buffer" }
)
map("n", "<leader>yf", "<cmd>%+y<cr>", { desc = "copy this file" })
map(
    "n",
    "<leader>a",
    "<cmd>AerialToggle!<cr>",
    { desc = "toggle's Aerial" }
)
map("n", "1j", "+10j", { desc = "go down 10 lines" })
map("n", "1k", "+10k", { desc = "go up 10 lines" })
map({ "n", "v" }, "L", "$", { desc = "go to end of the line" })
map({ "n", "v" }, "H", "^", { desc = "go to start of the line" })
map(
    { "n" },
    "<A-h>",
    "<cmd>bprevious<cr>",
    { desc = "previous buffer" }
)
map({ "n" }, "<A-l>", "<cmd>bnext<cr>", { desc = "next buffer" })
map(
    { "n" },
    "<A-1>",
    "<cmd>BufferLineGoToBuffer 1<cr>",
    { desc = "go to buffer 1" }
)
map(
    { "n" },
    "<A-2>",
    "<cmd>BufferLineGoToBuffer 2<cr>",
    { desc = "go to buffer 2" }
)
map(
    { "n" },
    "<A-3>",
    "<cmd>BufferLineGoToBuffer 3<cr>",
    { desc = "go to buffer 3" }
)
map(
    { "n" },
    "<A-L>",
    "<cmd>BufferLineMoveNext<cr>",
    { desc = "move current buffer to right" }
)
map(
    { "n" },
    "<A-H>",
    "<cmd>BufferLineMovePrev<cr>",
    { desc = "move current buffer to left" }
)
