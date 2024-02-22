
local status, packer = pcall(require, "packer")

if not status then
  print("Packer is not installed")
  return
end
-- Trying copilot
--

packer.startup(function(use)
  use("wbthomason/packer.nvim")
  use("github/copilot.vim")
  use("glepnir/dashboard-nvim")
  use 'edeneast/nightfox.nvim'
  use 'vim-airline/vim-airline-themes'
  use 'feline-nvim/feline.nvim'
  use 'tpope/vim-commentary'
  use 'ryanoasis/vim-devicons'
  use 'folke/tokyonight.nvim'
  use 'windwp/nvim-autopairs'
  use 'akinsho/toggleterm.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'udalov/kotlin-vim'
  use 'tpope/vim-surround'
  use 'theprimeagen/harpoon'
  use 'mbbill/undotree'
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
  use 'dart-lang/dart-vim-plugin'
  -- use {
  --     'nvim-lualine/lualine.nvim',
  --     requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  -- }
  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
  use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }
  use {
    "luukvbaal/nnn.nvim",
    config = function() require("nnn").setup() end
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'vonheikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- lsp support
      { 'neovim/nvim-lspconfig' },             -- required
      { 'williamboman/mason.nvim' },           -- optional
      { 'williamboman/mason-lspconfig.nvim' }, -- optional

      -- autocompletion
      { 'hrsh7th/nvim-cmp' },         -- required
      { 'hrsh7th/cmp-nvim-lsp' },     -- required
      { 'hrsh7th/cmp-buffer' },       -- optional
      { 'hrsh7th/cmp-path' },         -- optional
      { 'saadparwaiz1/cmp_luasnip' }, -- optional
      { 'hrsh7th/cmp-nvim-lua' },     -- optional

      ---- snippets
      { 'l3mon4d3/luasnip' },             -- required
      { 'rafamadriz/friendly-snippets' }, -- optional
    }
  }
  use "https://github.com/tpope/vim-fugitive"
  use({
      "aserowy/tmux.nvim",
      config = function() return require("tmux").setup() end
  })
  if packer_bootstrap then
    packer.sync()
  end
end)

-- making keymaps
