return {
	{
	  "vague-theme/vague.nvim",
	  lazy = false, -- make sure we load this during startup if it is your main colorscheme
	  priority = 1000, -- make sure to load this before all the other plugins
	  config = function()
		-- NOTE: you do not need to call setup if you don't want to.
		require("vague").setup({
		  -- optional configuration here
		})
		vim.cmd("colorscheme vague")
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
