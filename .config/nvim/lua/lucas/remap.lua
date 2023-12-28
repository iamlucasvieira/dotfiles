vim.g.mapleader = " "

-- Open file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open file explorer" })

-- Move line/selection down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line/selection down" })

-- Move line/selection up in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line/selection up" })

-- Join lines without moving cursor
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })

-- Center screen on cursor after page-down
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Center screen on cursor after page-down" })

-- Center screen on cursor after page-up
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Center screen on cursor after page-up" })

-- Center screen on cursor after next search result
vim.keymap.set("n", "n", "nzzzv", { desc = "Center screen on cursor after next search result" })

-- Center screen on cursor after previous search result
vim.keymap.set("n", "N", "Nzzzv", { desc = "Center screen on cursor after previous search result" })

-- Paste and keep visual selection
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste and keep visual selection" })

-- Yank to clipboard in normal and visual mode
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to clipboard" })

-- Yank entire line to clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank entire line to clipboard" })

-- Delete without yanking in normal and visual mode
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })

-- Escape from insert mode
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Escape from insert mode" })

-- Disable Q in normal mode
vim.keymap.set("n", "Q", "<nop>", { desc = "Disable Q in normal mode" })

-- Open tmux sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Open tmux sessionizer" })

-- Format buffer with LSP
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, { desc = "Format buffer with LSP" })

-- Go to next error in quickfix list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Next error in quickfix list" })

-- Go to previous error in quickfix list
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Previous error in quickfix list" })

-- Go to next error in location list
vim.keymap.set("n", "<leader>K", "<cmd>lnext<CR>zz", { desc = "Next error in location list" })

-- Go to previous error in location list
vim.keymap.set("n", "<leader>J", "<cmd>lprev<CR>zz", { desc = "Previous error in location list" })

-- Movement
vim.keymap.set("n", "<leader>h", "<Cmd>wincmd h<CR>", { desc = "Move cursor to left window" })
vim.keymap.set("n", "<leader>j", "<Cmd>wincmd j<CR>", { desc = "Move cursor to bottomw window" })
vim.keymap.set("n", "<leader>k", "<Cmd>wincmd k<CR>", { desc = "Move cursor to top window" })
vim.keymap.set("n", "<leader>l", "<Cmd>wincmd l<CR>", { desc = "Move cursor to right window" })
vim.keymap.set("n", "<leader>+", "<Cmd>vertical resize +5<CR>", { desc = "Resize window +5" })
vim.keymap.set("n", "<leader>-", "<Cmd>vertical resize -5<CR>", { desc = "Resize window -5" })
vim.keymap.set("n", "<C-S>", "<Cmd>write<CR>", { desc = "Save buffer" })

-- Tabs
vim.keymap.set("n", "<leader>q", "<Cmd>bprevious<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>e", "<Cmd>bnext<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<leader>w", "<Cmd>bdelete<CR>", { desc = "Delete buffer" })
