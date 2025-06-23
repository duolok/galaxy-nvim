-- [[ COMPLETE UI SETTINGS ]] -- 

return {
	-- [[ STATUS LINE ]] -- 
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
		config = function()
			require("plugins/lualine/config")()
		end,
	},

	-- [[ FILE EXPLORER ]] -- 
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("plugins/neo-tree/config")()
		end,
	},

	-- [[ OUTLINE ]]  --
	{
		"stevearc/aerial.nvim",
		opts = {},
		-- Optional dependencies
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("aerial").setup({
				lazy_load = false,
				open_automatic = require("custom_opts").auto_open_outline,
			})
		end,
	},
	-- [[ TAB LINE ]] --
	--{
	--	"akinsho/bufferline.nvim",
	--	version = "v4.1.0",
	--	dependencies = "nvim-tree/nvim-web-devicons",
	--	config = function()
	--		require("plugins/bufferline/config")()
	--	end,
	--},

	-- [[ CMD LINE ]] --
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("plugins/noice/config")()
		end,
	},

	 -- [[ UI ]] -- 
	{
		"stevearc/dressing.nvim",
		opts = {},
	},

	{ 'xiyaowong/transparent.nvim' }
}
