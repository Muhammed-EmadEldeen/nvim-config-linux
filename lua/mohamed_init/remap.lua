
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end


-- nnn 
map("n", "<C-a>", ":NnnExplorer<CR>")
map("t", "<C-a>", "<C-\\><C-n>:NnnExplorer<CR>")
map("n", "t", "o<ESC>")
map("n", "<C-t>", ":tabn<CR>")
map("n", "<C-n>", ":tabnew ")

-- tmux
map({'n', 't'}, '<C-h>', '<cmd>lua require("tmux").move_left()<cr>')
map({'n', 't'}, '<C-l>', '<cmd>lua require("tmux").move_right()<cr>')
map({'n', 't'}, '<C-k>', '<cmd>lua require("tmux").move_up()<cr>')
map({'n', 't'}, '<C-j>', '<cmd>lua require("tmux").move_down()<cr>')


map({'n', 't'}, '<C-A-h>', '<cmd>lua require("tmux").resize_left()<cr>')
map({'n', 't'}, '<C-A-l>', '<cmd>lua require("tmux").resize_right()<cr>')
map({'n', 't'}, '<C-A-k>', '<cmd>lua require("tmux").resize_up()<cr>')
map({'n', 't'}, '<C-A-j>', '<cmd>lua require("tmux").resize_down()<cr>')

-- terminal
map("n", "<F3>", ":ToggleTerm<CR>")
map("t", "<F3>", "<C-\\><C-n>:ToggleTerm<CR>")
map("v", "z", 'c"<C-r>""')
-- map("v", "z", "di\"<ESC>pa\"")
map("v", "x", 'c\'<C-r>\'')
-- harpoon
map('n', '<leader>i', mark.add_file)
map('n', '<C-e>', ui.toggle_quick_menu)
map('n', '<leader>1', ':lua require("harpoon.ui").nav_file(1)<CR>')
map('n', '<leader>2', ':lua require("harpoon.ui").nav_file(2)<CR>')
map('n', '<leader>3', ':lua require("harpoon.ui").nav_file(3)<CR>')
map('n', '<leader>4', ':lua require("harpoon.ui").nav_file(4)<CR>')
map('n', '<leader>5', ':lua require("harpoon.ui").nav_file(5)<CR>')


-- misc
map('n', '<M-l>', ":bnext<CR>")
map('n', '<M-h>', ":bprev<CR>")
map('n', '<leader>u', ':UndotreeToggle<CR>')
map("n", "<leader>=", ":vert res +10<CR>")
map("n", "<leader>-", ":vert res -10<CR>")
map("n", "<leader><ESC>", ":noh<CR>") -- for cancelling selections
map("n", "<leader>q", "za") -- for folding and unfolding
map("v", "\"", "")

map("t", "<ESC>", "<C-\\><C-n>") -- escape operation in terminal

map("v","J",":m '>+1<CR>gv=gv")
map("v","K",":m '>-2<CR>gv=gv")


map("x","<leader>p","\"_dP")
map("n","<leader>d","\"_d")
map("v","<leader>d","\"_d")











