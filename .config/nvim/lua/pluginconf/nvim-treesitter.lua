local treesitter_configs = require('nvim-treesitter.configs')

treesitter_configs.setup {
	highlight = { enable = true },
}

vim.cmd([[
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldlevelstart=1
]])

vim.g.skip_ts_context_commentstring_module = true
