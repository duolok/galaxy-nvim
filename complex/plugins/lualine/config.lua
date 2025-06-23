-- [[ LUALINE ]] -- 

return function()
	require("lualine").setup({
		options = {
			icons_enabled = true,
			component_separators = "",
			disabled_filetypes = {
				statusline = {},
				winbar = {},
			},
			ignore_focus = {},
			always_divide_middle = true,
			globalstatus = true,
			refresh = {
				statusline = 1000,
				tabline = 1000,
				winbar = 1000,
			},
		},
		sections = {
			lualine_a = { { "mode", right_padding = 2 } },
			lualine_b = {
				{ "branch" },
				{ "diff" },
			},
			lualine_c = {
				{
					"filename",
					file_status = true,		--  file status 
					newfile_status = false, -- new file status 
					path = 3,
					shorting_target = 40,	-- path shortener  length
					symbols = {
						modified = "[+]",
						readonly = "[-]",
						unnamed = "[No Name]",
						newfile = "[New]",
					},
				},
			},
			lualine_x = {
				{
					require("noice").api.status.command.get,
					cond = require("noice").api.status.command.has,
				},
				{
					require("noice").api.status.search.get,
					cond = require("noice").api.status.search.has,
				},
				"encoding",
				"fileformat",
				"filetype",
			},
			lualine_y = {
				"filesize",
				"progress",
			},
			lualine_z = { { "location", left_padding = 2 } },
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = { "location" },
			lualine_y = {},
			lualine_z = {},
		},
		tabline = {},
		winbar = {},
		inactive_winbar = {},
		extensions = {},
	})
end
