local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		kotlin = { "ktlint" },
		go = { "gofmt", "goimports" },
		-- css = { "prettier" },
		-- html = { "prettier" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
}

require("conform").setup(options)
