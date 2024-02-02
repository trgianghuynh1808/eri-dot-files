-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
local discipline = require("craftzdog.discipline")

discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- delete a word backward
-- keymap.set("n", "dw", "<vb_d>")

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- jumblist
-- keymap.set("n", "<C-m>", "<C-i>", opts)

-- newtab
-- keymap.set("n", "te", "tabedit", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)

-- split window
-- keymap.set("n", "<ss>", ":split<Return>", opts)
-- keymap.set("n", "<sv>", ":vsplit<Return>", opts)

-- move window
-- keymap.set("n", "<sh>", "<C-w>h")
-- keymap.set("n", "<sk>", "<C-w>k")
-- keymap.set("n", "<sj>", "<C-w>j")
-- keymap.set("n", "<sl>", "<C-w>l")

-- resize window
-- keymap.set("n", "<C-w><left>", "<C-w><")
-- keymap.set("n", "<C-w><right>", "<C-w>>")
-- keymap.set("n", "<C-w><up>", "<C-w>+")
-- keymap.set("n", "<C-w><down>", "<C-w>-")
--

-- rename IncRename
keymap.set("n", "<leader>rn", ":IncRename ")

-- diagnostics
keymap.set("n", "<C-j", function()
  vim.diagnostics.goto_next()
end, opts)
