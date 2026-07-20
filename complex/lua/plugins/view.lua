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

	-- [[ UI ]] --
	{
		"stevearc/dressing.nvim",
		opts = {},
	},

	{
		"xiyaowong/transparent.nvim",
		lazy = false,
		config = function()
			require("transparent").setup({
				extra_groups = {
					"NormalFloat",
					"NeoTreeNormal",
					"NeoTreeNormalNC",
					"NeoTreeEndOfBuffer",
					"TelescopeNormal",
					"TelescopeBorder",
					"WhichKeyFloat",
					"ZenBg",
				},
				exclude_groups = { "CursorLine", "CursorLineNr" },
			})
			vim.g.transparent_enabled = true

			vim.api.nvim_create_autocmd("ColorScheme", {
				callback = function()
					pcall(vim.cmd, "TransparentClear")
				end,
			})
		end,
	},
}
