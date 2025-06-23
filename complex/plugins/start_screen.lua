-- [[ START PAGE ]] ]] --

return {
	{
		"goolord/alpha-nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
		setup = function()
			vim.g.alpha_statusline = false
		end,
		config = function()
			local dashboard = require("alpha.themes.dashboard")

			-- Header
			dashboard.section.header.val = require("custom_opts").home_logo
			dashboard.section.header.opts.hl = "White"

			-- Footer
			local handle = io.popen("fortune")
			local fortune = handle:read("*a")
			handle:close()
			dashboard.section.footer.val = fortune

			-- Button
			local create_button = function(key, desc, action)
				local b = dashboard.button(key, desc, action)
				return b
			end
			dashboard.section.buttons.val = {
				create_button("f", "  New file", ":ene <BAR> startinsert <CR>"),
				create_button("s", "  Load last session", ":SessionManager load_last_session<CR>"),
				create_button("e", "  Select session", ":SessionManager load_session<CR>"),
				create_button( "c", "  Open current directory", ":Neotree position=left source=filesystem action=focus toggle=true<CR>"),
				create_button("q", "󰗼  Quit", ":qa<CR>"),
			}

			-- Config
			dashboard.config.layout[1].val = vim.fn.max({ 3, vim.fn.floor(vim.fn.winheight(0) * 0.3) })
			dashboard.config.layout[3].val = 5
			dashboard.config.opts.noautocmd = true

			require("alpha").setup(dashboard.config)

			-- Disable the tabline & statusline in alpha dashboard screen
			vim.cmd([[
			autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
			autocmd User AlphaReady set laststatus=0 | autocmd BufUnload <buffer> set laststatus=3
			autocmd User AlphaReady :NeoTreeClose
			autocmd User AlphaReady :AerialCloseAll
			]])
		end,
	},
}
