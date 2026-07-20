-- [[ CUSTOM OVERLAY ]] --
-- Loaded last via `pcall(require, "custom")` in init.lua. Adds the
-- highest-value bindings from the previous ~/.config/nvim, without
-- clobbering any galaxy-nvim keybind defined in custom_keys.lua.

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- ── File ops ──────────────────────────────────────────────────────────
map("n", "<leader>w", "<Cmd>update<CR>", { desc = "Save buffer" })
map("n", "<leader>q", "<Cmd>quit<CR>",   { desc = "Quit window" })
map("n", "<leader>Q", "<Cmd>wqa<CR>",    { desc = "Write all + quit" })
map("n", "<leader>r", ":edit!<CR>",      { desc = "Reload current file" })
map("n", "<leader>a", ":edit #<CR>",     { desc = "Alternate buffer" })

-- Quick-edit config files
map("n", "<leader>v", "<Cmd>edit $MYVIMRC<CR>",      { desc = "Edit init.lua" })
map("n", "<leader>z", "<Cmd>edit ~/.config/zsh/.zshrc<CR>", { desc = "Edit .zshrc" })

-- ── Movement / selection ─────────────────────────────────────────────
map("n", "gl", "$", { desc = "Jump: end of line" })
map("n", "yag", ":%y<CR>", opts)         -- yank entire file
map("n", "vag", "ggVG", opts)             -- visual select entire file
map("v", "<", "<gv", opts)                -- keep selection after dedent
map("v", ">", ">gv", opts)                -- keep selection after indent
map("v", "<leader>p", "\"_dP", { desc = "Paste w/o yanking selection" })

-- ── System integration ──────────────────────────────────────────────
map({ "n", "v", "x" }, "<C-y>", '"+y', { desc = "System clipboard yank" })
map("n", "<C-f>", "<Cmd>!open .<CR>", { desc = "Open cwd in Finder" })

-- ── Oil ──────────────────────────────────────────────────────────────
map("n", "<leader>e", "<Cmd>Oil<CR>",      { desc = "Oil file explorer" })
map("n", "<leader>E", "<Cmd>Oil --float<CR>", { desc = "Oil (float)" })

-- ── Tabs 1..8 ───────────────────────────────────────────────────────
for i = 1, 8 do
	map({ "n", "t" }, "<leader>" .. i, "<Cmd>tabnext " .. i .. "<CR>",
	    { desc = "Tab " .. i })
end

-- ── LSP quick format / quickfix ─────────────────────────────────────
map("n", "<leader>lf", function() vim.lsp.buf.format() end, { desc = "LSP format" })
map("n", "<C-q>", ":copen<CR>", opts)
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Terminal -> normal mode" })

-- ── Re-source the config ─────────────────────────────────────────────
map("n", "<leader>O", "<Cmd>source $MYVIMRC<CR>", { desc = "Source init.lua" })
