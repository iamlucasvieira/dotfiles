return {
	{
		"mrcjkb/rustaceanvim",
		version = "^3", -- Recommended
		ft = { "rust" },
		keys = {
			{ "<leader>ra", "<Cmd>RustLsp codeAction<CR>", desc = "Open code actions." },
			{ "<leader>rk", "<Cmd>RustLsp hover actions<CR>", desc = "Show hover." },
			{ "<leader>re", "<Cmd>RustLsp explainError<CR>", desc = "Explain error." },
			{ "<leader>rr", "<Cmd>RustLsp runnables<CR>", desc = "Run." },
		},
	},
}
