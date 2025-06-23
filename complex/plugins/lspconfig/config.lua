-- [[ LSP CONFIGURATION ]] --

return function()
	require("lspconfig.ui.windows").default_options.border = "rounded"

	vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
	vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
	vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
	vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

	vim.api.nvim_create_autocmd("LspAttach", {
		group = vim.api.nvim_create_augroup("UserLspConfig", {}),
		callback = function(ev)
			vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

			local opts = { buffer = ev.buf }
			vim.keymap.set("n", require("custom_keys").goto_declaration, vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", require("custom_keys").goto_definition, vim.lsp.buf.definition, opts)
			vim.keymap.set("n", require("custom_keys").goto_references, vim.lsp.buf.references, opts)
			vim.keymap.set("n", require("custom_keys").goto_impl, vim.lsp.buf.implementation, opts)
			vim.keymap.set("n", require("custom_keys").lsp_rename, vim.lsp.buf.rename, opts)
			vim.keymap.set("n", require("custom_keys").format, function()
				vim.lsp.buf.format({ async = true })
			end, opts)

			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "<C-m>", vim.lsp.buf.signature_help, opts)
			vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)

			vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
		end,
	})
end
