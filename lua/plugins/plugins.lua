local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" } -- Avalible none, single, double, shadow, rounded
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use 'wbthomason/packer.nvim'                      -- Have packer manage itself
  use 'nvim-lua/popup.nvim'                         -- An implementation of the Popup API from vim in Neovim
  use 'nvim-lua/plenary.nvim'                       -- Useful lua functions used in lots of plugins
  use 'lewis6991/impatient.nvim'                    -- Improve vim loading speeds
  use "numToStr/Comment.nvim"                       -- Easily comment stuff

  -- Visuals
  use 'kyazdani42/nvim-web-devicons'                -- Add nerdfont icons to vim
  use 'kyazdani42/nvim-tree.lua'                    -- File tree view
  use {'akinsho/bufferline.nvim', tag = "v2.*"}     -- Shows buffer as tabs
  use 'nvim-lualine/lualine.nvim'                   -- Fully customizable statusline
  use 'lukas-reineke/indent-blankline.nvim'         -- Indentation marks
  use 'fgheng/winbar.nvim'
  use { "christianchiarulli/nvim-gps", branch = "text_hl" }

  -- IDE Utils
  use 'folke/which-key.nvim'                        -- Show keybindings in popup
  use 'voldikss/vim-floaterm'                       -- A floating terminal
  use 'moll/vim-bbye'                               -- A simple way to close vim buffers
  use 'tpope/vim-commentary'                        -- Comment with a keybinding
  use 'goolord/alpha-nvim'                          -- Alpha is a dashboard-like plugin
  use 'norcalli/nvim-colorizer.lua'                 -- Add css colors
  use 'windwp/nvim-autopairs'                       -- Autopairs, integrates with both cmp and treesitter

  -- Colorschemes
  use 'navarasu/onedark.nvim'                       -- OneDark colorscheme
  use 'LunarVim/darkplus.nvim'                      -- VSCode-like colorscheme
  use 'folke/tokyonight.nvim'                       -- Tokyonight colorscheme
  use 'rmehri01/onenord.nvim'                       -- OneDark + Nord = OneNord colorscheme
  -- use 'shaunsingh/moonlight.nvim'                   -- Darkblue based theme
  use 'glepnir/zephyr-nvim'                         -- Warm colorscheme
  -- use 'shaunsingh/nord.nvim'                        -- You alredy know nord
  use 'Mofiqul/dracula.nvim'                        -- It'll bite you
  use { 'luisiacc/gruvbox-baby', branch = 'main' }  -- Gruvbox based theme
  use "rebelot/kanagawa.nvim"                       -- Almost kawabonga

  -- Cmp plugins
  use 'hrsh7th/nvim-cmp'                            -- The cmp compltetion plugin
  use 'hrsh7th/cmp-buffer'                          -- Use buffer-context completion
  use 'hrsh7th/cmp-path'                            -- Use path-context completion
  use 'hrsh7th/cmp-cmdline'                         -- Command conpletions
  use 'hrsh7th/cmp-nvim-lsp'                        -- Uses LSP completion in cmp
  use 'hrsh7th/cmp-nvim-lua'                        -- Copletios for nvim lua API
  use 'saadparwaiz1/cmp_luasnip'                    -- Integrates LuaSnip to cmp

  -- snippets
  use 'L3MON4D3/LuaSnip'                            -- Snippet engine
  use 'rafamadriz/friendly-snippets'                -- A bunch of snippets to use

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'             -- treesitter plugin for syntax highlighting
  use 'JoosepAlviste/nvim-ts-context-commentstring' -- context commentstring plugin
  use 'p00f/nvim-ts-rainbow'                        -- Colorize bracket pairs with TS

  -- Telescope
  use 'nvim-telescope/telescope.nvim'               -- Fzf-like plugin
  use 'ahmedkhalf/project.nvim'                     -- Project management for telescope

  -- Git
  use 'lewis6991/gitsigns.nvim'                     -- Git hunk signs
  use 'kdheepak/lazygit.nvim'                       -- Tui for git management

  -- Lsp
  use 'neovim/nvim-lspconfig'                       -- LSP
  use 'williamboman/nvim-lsp-installer'             -- An easy way to install language servers

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
