-- [[ OIL.NVIM ]] -- edit your filesystem like a buffer.
-- Open with <leader>e (mapped in custom.lua) or `:Oil`.
return {
	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		lazy = false,
		config = function()
			require("oil").setup({
				default_file_explorer = true,
				delete_to_trash = true,
				skip_confirm_for_simple_edits = true,
				view_options = {
					show_hidden = true,
				},
				lsp_file_methods = {
					enabled = true,
					timeout_ms = 1000,
					autosave_changes = true,
				},
				columns = { "icon" },
				float = {
					max_width = 0.4,
					max_height = 0.7,
					border = "rounded",
				},
				keymaps = {
					["<C-h>"] = false, -- let our window-jump keep <C-h>
					["<C-l>"] = false,
				},
			})
		end,
	},
}
