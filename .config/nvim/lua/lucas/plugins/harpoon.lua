return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")

			-- REQUIRED
			harpoon:setup()
			-- REQUIRED

			-- Append current file to Harpoon list
			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():append()
			end, { desc = "Append current file to Harpoon list" })

			-- Toggle Harpoon quick menu
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end, { desc = "Toggle Harpoon quick menu" })

			-- Select first item in Harpoon list
			vim.keymap.set("n", "<C-h>", function()
				harpoon:list():select(1)
			end, { desc = "Select first item in Harpoon list" })

			-- Select second item in Harpoon list
			vim.keymap.set("n", "<C-j>", function()
				harpoon:list():select(2)
			end, { desc = "Select second item in Harpoon list" })

			-- Select third item in Harpoon list
			vim.keymap.set("n", "<C-k>", function()
				harpoon:list():select(3)
			end, { desc = "Select third item in Harpoon list" })

			-- Select fourth item in Harpoon list
			vim.keymap.set("n", "<C-l>", function()
				harpoon:list():select(4)
			end, { desc = "Select fourth item in Harpoon list" })

			-- Navigate to the previous buffer in Harpoon list
			vim.keymap.set("n", "<C-S-P>", function()
				harpoon:list():prev()
			end, { desc = "Navigate to previous buffer in Harpoon list" })

			-- Navigate to the next buffer in Harpoon list
			vim.keymap.set("n", "<C-S-N>", function()
				harpoon:list():next()
			end, { desc = "Navigate to next buffer in Harpoon list" })
		end,
	},
}
