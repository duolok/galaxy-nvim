-- [[ BASIC KEYMAPS ]] -- 

local keys = require("custom_keys")

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ S movement :)]
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- [[ FILE MANAGER ]] --
vim.keymap.set("n", keys.ex_explorer, vim.cmd.Ex)
-- [[ CLIPBOARD ]] -- 
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "J", "mzJ`z") -- moves line under to your current line
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- when moving down a page keep your eyes at the center of a screen
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- when moving up a page keep your eyes at the center of a screen
vim.keymap.set("n", "n", "nzzzv") -- search for next occurrence
vim.keymap.set("n", "N", "Nzzzv") -- search for previous occurrence

-- [[ FUGITIVE ]] --
vim.keymap.set("n", keys.fugitive_open, vim.cmd.Git)
vim.keymap.set("n", keys.git_push, ":Git push")

-- [[ UNDO TREE ]] -- 
vim.keymap.set('n', keys.ut_open, vim.cmd.UndotreeToggle)
