require("nvim-tree").setup({})

-- Keymap to toggle Nvim Tree with a description
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", {
	noremap = true,
	silent = true,
	desc = "Toggle Nvim Tree",
})
