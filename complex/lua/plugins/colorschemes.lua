return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		config = function()
			require("rose-pine").setup({})
			vim.cmd("colorscheme rose-pine")
		end,
	},

	{
	  "vague-theme/vague.nvim",
	  lazy = false,
	  priority = 1000,
	  config = function()
		require("vague").setup({})
	  end
	},

	{
		'morhetz/gruvbox',
		lazy = false,
		priority = 1000,
		config = function()
		end,
	},

	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
		end,
	},
	{
		"lunarvim/horizon.nvim",
		lazy = false,
		priority = 1000,
		config = function()
		end,
	},
	{
		'nyoom-engineering/oxocarbon.nvim',
		lazy = false,
		priority = 1000,
		config = function()
		end,
	},
}
