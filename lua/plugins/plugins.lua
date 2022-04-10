vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- <<< Themes/Styles >>>
  use 'rose-pine/neovim'
  use 'kyazdani42/nvim-web-devicons'

  --- <<< Tools >>>
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'kyazdani42/nvim-tree.lua'
  -- <<< Assistence/Autocomplete >>>
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'onsails/lspkind-nvim'
  use 'windwp/nvim-autopairs'
  use 'norcalli/nvim-colorizer.lua'
  use 'terrortylor/nvim-comment'
  use 'folke/trouble.nvim'
  use 'folke/which-key.nvim'
  use 'akinsho/toggleterm.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'glepnir/dashboard-nvim'
  use 'akinsho/bufferline.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'p00f/nvim-ts-rainbow'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
end)
