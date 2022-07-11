-- Native LSP Setup
local on_attach = function(client, bufnr)
	local opts = { noremap = true }
	vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gy", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>dj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>dk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>dl", "<cmd>Telescope diagnostics<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
end

local lsp = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- List of language servers to apply the default configuration to
local servers = { 'pyright', 'vimls', 'clangd', 'jdtls', 'gopls' }
for _, server in pairs(servers) do
	lsp[server].setup {
		capabilities = capabilities,
		on_attach = on_attach,
	}
end

-------------------------------------------------
-- SPECIALIZED CONFIGURATION FOR LANGUAGE SERVERS
-------------------------------------------------

lsp.tsserver.setup {
	capabilities = capabilities,
	on_attach = function(client, bufnr)
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false
		on_attach(client, bufnr)
	end,
}

lsp.sumneko_lua.setup {
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			}
		}
	}
}

lsp.html.setup {
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { 'html', 'xml', 'xhtml' }
}
