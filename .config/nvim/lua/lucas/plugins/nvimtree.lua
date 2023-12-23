return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({})

			-- Keymap to toggle Nvim Tree with a description
			vim.api.nvim_set_keymap("n", "<leader>t", ":NvimTreeToggle<CR>", {
				noremap = true,
				silent = true,
				desc = "Toggle Nvim Tree",
			})
		end,
	},
}
