-- [[ LSP SETTINGS ]] --
--
-- Uses the nvim 0.11+ `vim.lsp.config` / `vim.lsp.enable` API to avoid the
-- `lspconfig` framework deprecation. Mason still installs binaries.

return {
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
					border = "rounded",
				},
			})
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig", -- still needed for default LSP server definitions
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"gopls",
					"rust_analyzer",
					"lua_ls",
					"clangd",
					"pyright",
				},
				automatic_installation = true,
			})

			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Per-server overrides (merged on top of nvim-lspconfig's defaults
			-- which we pull in via vim.lsp.config[name]).
			local overrides = {
				gopls = {
					settings = {
						gopls = {
							completeUnimported = true,
							usePlaceholders = true,
							analyses = { unusedparams = true },
							staticcheck = true,
						},
					},
				},
				rust_analyzer = {
					settings = {
						["rust-analyzer"] = {
							cargo = { allFeatures = true, loadOutDirsFromCheck = true },
							procMacro = { enable = true },
							checkOnSave = true,
							check = { command = "clippy" },
						},
					},
				},
				lua_ls = {
					settings = {
						Lua = {
							diagnostics = { globals = { "vim" } },
							workspace = { checkThirdParty = false },
							telemetry = { enable = false },
						},
					},
				},
				pyright = {
					settings = {
						python = {
							analysis = {
								diagnosticSeverityOverrides = {
									reportUndefinedVariable = "none",
									reportMissingImports = "none",
									reportGeneralTypeIssues = "none",
									reportOptionalMemberAccess = "none",
									reportOptionalSubscript = "none",
								},
							},
						},
					},
				},
			}

			local servers = { "gopls", "rust_analyzer", "lua_ls", "clangd", "pyright" }
			for _, name in ipairs(servers) do
				vim.lsp.config(name, vim.tbl_deep_extend(
					"force",
					{ capabilities = capabilities },
					overrides[name] or {}
				))
			end
			vim.lsp.enable(servers)
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins/lspconfig/config")()
		end,
	},
}
