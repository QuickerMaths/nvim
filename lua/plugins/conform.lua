return {
	"stevearc/conform.nvim",
	lazy = false,
	opts = {
		formatters_by_ft = {
			python = { "isort", "black" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			["*"] = { "codespell" },
		},
		notify_on_error = true,
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
