return {
	{
		"williamboman/mason.nvim",
	},

	{
		"williamboman/mason-lspconfig.nvim",
	},
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		config = function()
			local lsp_zero = require("lsp-zero")

			lsp_zero.on_attach(function(client, bufnr)
				local opts = { buffer = bufnr, remap = false }

				-- Go to definition
				vim.keymap.set("n", "gd", function()
					vim.lsp.buf.definition()
				end, opts, { desc = "Go to definition" })

				-- Show hover information
				vim.keymap.set("n", "K", function()
					vim.lsp.buf.hover()
				end, opts, { desc = "Show hover information" })

				-- Search workspace symbols
				vim.keymap.set("n", "<leader>vws", function()
					vim.lsp.buf.workspace_symbol()
				end, opts, { desc = "Search workspace symbols" })

				-- Show diagnostics in a floating window
				vim.keymap.set("n", "<leader>vd", function()
					vim.diagnostic.open_float()
				end, opts, { desc = "Show diagnostics in floating window" })

				-- Go to next diagnostic
				vim.keymap.set("n", "[d", function()
					vim.diagnostic.goto_next()
				end, opts, { desc = "Go to next diagnostic" })

				-- Go to previous diagnostic
				vim.keymap.set("n", "]d", function()
					vim.diagnostic.goto_prev()
				end, opts, { desc = "Go to previous diagnostic" })

				-- Show code actions
				vim.keymap.set("n", "<leader>vca", function()
					vim.lsp.buf.code_action()
				end, opts, { desc = "Show code actions" })

				-- Show references
				vim.keymap.set("n", "<leader>vrr", function()
					vim.lsp.buf.references()
				end, opts, { desc = "Show references" })

				-- Rename symbol
				vim.keymap.set("n", "<leader>vrn", function()
					vim.lsp.buf.rename()
				end, opts, { desc = "Rename symbol" })

				-- Show signature help in insert mode
				vim.keymap.set("i", "<C-h>", function()
					vim.lsp.buf.signature_help()
				end, opts, { desc = "Show signature help in insert mode" })
			end)

			lsp_zero.extend_lspconfig()
			require("mason").setup({})
			require("mason-lspconfig").setup({
				ensure_installed = { "gopls" },
				handlers = {
					lsp_zero.default_setup,
					lua_ls = function()
						local lua_opts = lsp_zero.nvim_lua_ls()
						require("lspconfig").lua_ls.setup(lua_opts)
					end,
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
	},
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local lsp_zero = require("lsp-zero")
			lsp_zero.extend_cmp()

			local cmp = require("cmp")
			local cmp_select = { behavior = cmp.SelectBehavior.Select }

			cmp.setup({
				sources = {
					{ name = "path" },
					{ name = "nvim_lsp" },
					{ name = "nvim_lua" },
				},
				formatting = lsp_zero.cmp_format(),
				mapping = cmp.mapping.preset.insert({
					["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
					["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
					["<C-y>"] = cmp.mapping.confirm({ select = true }),
					["<C-Space>"] = cmp.mapping.complete(),
				}),
			})
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets" },
	},
}
