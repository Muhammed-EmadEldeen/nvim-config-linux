local o = vim.o
local opt = vim.opt
opt.foldenable = true
opt.foldlevel = 20
opt.foldmethod = 'expr'
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldcolumn = "2"
opt.foldlevelstart = -1


opt.backup= false
opt.undodir=os.getenv("HOME") .. "/.vim/undodir"
opt.undofile= true

opt.scrolloff=8

vim.g.mapleader = " "
vim.cmd("let NERDTreeShowLineNumbers = 1")



o.number = true
o.numberwidth = 5
o.relativenumber = true
o.signcolumn = 'yes:2'
o.cursorline = true

o.expandtab = true
o.cindent = true
o.wrap = true
o.textwidth = 300
o.tabstop = 4

o.shiftwidth = 4
o.softtabstop = 4
o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'
o.clipboard = 'unnamedplus'
o.ignorecase = true
o.smartcase = true
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
o.history = 50
o.splitright = true
o.splitbelow = true
o.jumpoptions = 'view'
vim.cmd("set ma")
vim.cmd("let nerdtreeshowlinenumbers=1")

vim.cmd("colorscheme nightfox")

vim.opt.termguicolors = true


