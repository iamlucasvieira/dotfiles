return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{ "<leader>ft", "<Cmd>Telescope<CR>", desc = "Open Telescope" },
			{ "<Leader>ff", "<Cmd>Telescope find_files<CR>", desc = "Find files" },
			{ "<Leader>fg", "<Cmd>Telescope live_grep<CR>", desc = "Grep inside files" },
			{ "<Leader>fs", "<Cmd>Telescope git_files<CR>", desc = "Find files in git" },
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
				extensions = {
					fzf = {
						fuzzy = true, -- false will only do exact matching
						override_generic_sorter = true, -- override the generic sorter
						override_file_sorter = true, -- override the file sorter
						case_mode = "smart_case", -- or "ignore_case" or "respect_case"
						-- the default case_mode is "smart_case"
					},
				},
			})
			telescope.load_extension("fzf")
		end,
	},
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
}
