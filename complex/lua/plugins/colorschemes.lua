return {
	{
		'rose-pine/neovim',
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd.colorscheme 'rose-pine'
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
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
