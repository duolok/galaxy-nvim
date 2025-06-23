-- [[ GIT ]] -- 

return {
	{ "tpope/vim-fugitive",},
	{
		"lewis6991/gitsigns.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("gitsigns").setup({
				current_line_blame = false,
				preview_config = {
					border = "rounded",
				},
			})
		end,
	},
	{ "sindrets/diffview.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
}
