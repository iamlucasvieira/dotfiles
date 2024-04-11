return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{ "<Leader>p", "<Cmd>Telescope find_files<CR>", desc = "Find files" },
			{ "<Leader>fs", "<Cmd>Telescope live_grep<CR>", desc = "Grep inside files" },
			{ "<Leader>fg", "<Cmd>Telescope git_files<CR>", desc = "Find files in git" },
			{ "<Leader>fh", "<Cmd>Telescope help_tags<CR>", desc = "Search in vim :help" },
			{ "<Leader>fb", "<Cmd>Telescope buffers<CR>", desc = "List and search buffers" },
			{ "<Leader>fq", "<Cmd>Telescope quickfix<CR>", desc = "List and search quickfix" },
			{
				"<Leader>fd",
				'<Cmd>lua require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })<CR>',
				desc = "Find files in config path",
			},
			{
				"<Leader>fw",
				'<Cmd>lua require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>") })<CR>',
				desc = "Grep word under cursor",
			},
		},

		config = function()
			local actions = require("telescope.actions")
			local trouble = require("trouble.providers.telescope")

			local telescope = require("telescope")

			telescope.setup({
				defaults = {
					mappings = {
						i = { ["<c-t>"] = trouble.open_with_trouble },
						n = { ["<c-t>"] = trouble.open_with_trouble },
					},
				},
			})
		end,
	},
}
