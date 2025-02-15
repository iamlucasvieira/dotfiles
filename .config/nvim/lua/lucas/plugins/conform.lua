return {
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					-- Conform will run multiple formatters sequentially
					python = { "ruff_fix", "ruff_format" },
					go = { "goimports-reviser", "gofumt", "goimports" },
					javascript = { "prettier" },
					css = { "prettier" },
					html = { "prettier" },
					json = { "prettier" },
					yaml = { "prettier" },
					lua = { "stylua" },
					-- Use a sub-list to run only the first available formatter
				},
				format_on_save = {
					-- These options will be passed to conform.format()
					timeout_ms = 500,
					lsp_fallback = true,
				},

				formatters = {
					prettier = {
						prepend_args = { "--tab-width", "4" },
					},
				},
			})
			local conform = require("conform")

			vim.keymap.set({ "n", "v" }, "<leader>mp", function()
				conform.format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 500,
				})
			end, { desc = "Format file or range (in visual mode)" })
		end,
	},
}
