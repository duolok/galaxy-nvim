-- [[ CUSTOM KEYS ]] --
--
-- You can edit the default settings of the shortcut keys here
--
return {
	-- [[ LEADER ]]  --
	leader = " ",

	-- Use the shortcut to switch/jump window.
	jump_left_window = "<C-h>",
	jump_right_window = "<C-l>",
	jump_up_window = "<C-k>",
	jump_down_window = "<C-j>",

	-- Use the shortcut to pick a buffer tab.
	pick_tab = "<leader>t",

	-- Use the shortcut to open or close file explorer.
	ex_explorer = "<C-n>",
	file_explorer = "<C-A-n>",

	-- Use the shortcut to open or close the outline, it need to call the lsp server.
	outline = "<F5>",

	-- Use the shortcut to open or close the terminal.
	terminal_bottom = "<A-b>", -- open terminal at the bottom

	-- Use the shortcut to switch a session.
	switch_session = "<leader>ss",

	-- [[ TELESCOPE Keybinds]]
	find_files = "<leader>ff",
	live_grep = "<leader>fl",
	search_cursor = "<leader>cc",
	find_buffer = "<leader><space>",

	-- Open Fugitive
	fugitive_open = "<leader>gs",
	-- Git Push
	git_push = "<leader>gp",
	-- Open 'git diff'.
	diff_open = "<leader>df",
	-- Close 'git diff'.
	diff_close = "<leader>dc",
	-- Open UndoTree
	ut_open = "<leader>y",

	--Resize the window, <control + alt + hjkl>
	resize_left = "<C-A-h>",
	resize_down = "<C-A-j>",
	resize_up = "<C-A-k>",
	resize_right = "<C-A-l>",

	-- Goto
	goto_definition = "gd",
	goto_references = "gr",
	goto_declaration = "gD",
	goto_impl = "gi",
	-- Use the shortcut to rename the code symbols.
	lsp_rename = "<leader>re",
	-- Use the shortcut to format your codes.
	format = "<leader>ft",
}
