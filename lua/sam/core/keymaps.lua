vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search highlights

keymap.set("n", "x", '"_x') -- delete one char, without copy to register

keymap.set("n", "<leader>+", "<C-a>") -- inc number
keymap.set("n", "<leader>-", "<C-x>") -- decr number

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- normal nvim tabs
keymap.set("n", "<leader>tt", ":tabnew<CR>") -- open new tab
-- keymap.set("n", "<leader>xx", ":tabclose<CR>") -- close current tab
-- keymap.set("n", "<leader>nn", ":tabn<CR>") -- next tab
-- keymap.set("n", "<leader>bb", ":tabp<CR>") -- prev tab

-- bufferline tabs
keymap.set("n", "<leader>xx", ":bdelete<CR>") -- close current tab
keymap.set("n", "<leader>nn", ":bnext<CR>") -- next tab
keymap.set("n", "<leader>bb", ":bprevious<CR>") -- prev tab

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
-- keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
-- keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
-- keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")

-- Move text up and down
keymap.set("v", "Ż", ":m-2<CR>gv=gv")
keymap.set("v", "∆", ":m'>+<CR>gv=gv")

keymap.set("n", "Ż", ":m-2<CR>==")
keymap.set("n", "∆", ":m+<CR>==")
