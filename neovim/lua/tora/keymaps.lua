local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Disable arrow keys to force h/j/k/l
-- Normal
keymap("n", "<Left>", ":echoe 'Use h'<CR>", opts)
keymap("n", "<Right>", ":echoe 'Use l'<CR>", opts)
keymap("n", "<Up>", ":echoe 'Use k'<CR>", opts)
keymap("n", "<Down>", ":echoe 'Use j'<CR>", opts)
-- Insert
keymap("i", "<Left>", "<ESC>:echoe 'Use h'<CR>", opts)
keymap("i", "<Right>", "<ESC>:echoe 'Use l'<CR>", opts)
keymap("i", "<Up>", "<ESC>:echoe 'Use k'<CR>", opts)
keymap("i", "<Down>", "<ESC>:echoe 'Use j'<CR>", opts)
-- Visual
keymap("v", "<Left>", "<ESC>:echoe 'Use h'<CR>", opts)
keymap("v", "<Right>", "<ESC>:echoe 'Use l'<CR>", opts)
keymap("v", "<Up>", "<ESC>:echoe 'Use k'<CR>", opts)
keymap("v", "<Down>", "<ESC>:echoe 'Use j'<CR>", opts)

-- Disable keybinds for Tmux
keymap("n", "<C-a>", "<Nop>", opts)
keymap("i", "<C-a>", "<Nop>", opts)
keymap("v", "<C-a>", "<Nop>", opts)

-- Normal --
-- Better window navigation
keymap("n", "<C-A-h>", "<C-w>h", opts)
keymap("n", "<C-A-j>", "<C-w>j", opts)
keymap("n", "<C-A-k>", "<C-w>k", opts)
keymap("n", "<C-A-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to exit out of insert mode
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
