 -- [[ GALAXY NVIM - COMPLEX ]] --
-- Advanced version for more configured text editing.
require("basic")

-- [[ LAZY ]] -- local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = require("custom_keys").leader
vim.g.maplocalleader = " "
vim.g.netrw_banner = 0
vim.g.netrww_winsize = 25

require("lazy").setup({
	spec = { { import = "plugins" }, },
	ui = { border = "rounded", }, change_detection = { enabled = true, },
})

-- [[ CONFIG ]] -- 
require("remaps")
require("core")
pcall(require, "custom")
