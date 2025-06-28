-- local servers = {
--   "clangd",
--   "cssls",
--   "emmet_language_server",
--   "graphql",
--   "html",
--   "lua_ls",
--   "pyright",
--   "pylsp",
--   "rust_analyzer",
--   "tailwindcss",
--   "ts_ls",
-- }
--
-- vim.lsp.enable(servers)

vim.diagnostic.config {
	virtual_text = false,
	virtual_lines = false,
}

vim.fn.sign_define(
	"DiagnosticSignError",
	{ text = "●", texthl = "DiagnosticSignError" }
)
vim.fn.sign_define(
	"DiagnosticSignWarn",
	{ text = "●", texthl = "DiagnosticSignWarn" }
)
vim.fn.sign_define(
	"DiagnosticSignInfo",
	{ text = "●", texthl = "DiagnosticSignInfo" }
)
vim.fn.sign_define(
	"DiagnosticSignHint",
	{ text = "●", texthl = "DiagnosticSignHint" }
)
