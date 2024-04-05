return {
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			-- Toggle Trouble window
			vim.keymap.set("n", "<leader>xx", function()
				require("trouble").toggle()
			end, { desc = "Toggle Trouble window" })

			-- Toggle Trouble window with workspace diagnostics
			vim.keymap.set("n", "<leader>xw", function()
				require("trouble").toggle("workspace_diagnostics")
			end, { desc = "Toggle Trouble with workspace diagnostics" })

			-- Toggle Trouble window with document diagnostics
			vim.keymap.set("n", "<leader>xd", function()
				require("trouble").toggle("document_diagnostics")
			end, { desc = "Toggle Trouble with document diagnostics" })

			-- Toggle Trouble window with quickfix list
			vim.keymap.set("n", "<leader>xq", function()
				require("trouble").toggle("quickfix")
			end, { desc = "Toggle Trouble with quickfix list" })

			-- Toggle Trouble window with location list
			vim.keymap.set("n", "<leader>xl", function()
				require("trouble").toggle("loclist")
			end, { desc = "Toggle Trouble with loclist" })

			-- Toggle Trouble window with LSP references
			vim.keymap.set("n", "gR", function()
				require("trouble").toggle("lsp_references")
			end, { desc = "Toggle Trouble with LSP references" })

			vim.keymap.set("n", "[t", function()
				require("trouble").next({ skip_groups = true, jump = true })
			end, { desc = "Next trouble item" })

			vim.keymap.set("n", "]t", function()
				require("trouble").previous({ skip_groups = true, jump = true })
			end, { desc = "Previous trouble item" })
		end,
	},
}
