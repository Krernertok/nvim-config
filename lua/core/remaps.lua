-- Remaps
vim.g.mapleader = " "

-- Remove search highlighting
vim.keymap.set("n", "<leader>n", vim.cmd.nohlsearch)

-- Remap Esc
vim.keymap.set("i", "jk", "<Esc>")

-- Allow moving highlighted text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor on page center when doing page up and page down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Leader+y to yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
--vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Keep visual mode highlight when indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Visual block mode
vim.keymap.set("n", "<C-q>", "<C-v>")

-- Move between tabs
vim.keymap.set("n", "å", vim.cmd.tabnext)
vim.keymap.set("n", "Å", vim.cmd.tabprevious)

-- Move between windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Splits
vim.keymap.set("n", "<leader>|", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>-", vim.cmd.split)

-- Closing windows
vim.keymap.set("n", "<leader>q", vim.cmd.quit)
vim.keymap.set("n", "<leader>Q", vim.cmd.qall)

-- Saving
vim.keymap.set("n", "<leader>w", vim.cmd.write)

-- Exit terminal mode
vim.keymap.set("t", "jk", "<C-\\><C-n>")
vim.keymap.set("n", "<leader>t", function() vim.cmd("rightbelow vsplit | :term") end)
