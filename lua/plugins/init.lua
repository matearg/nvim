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
    autocmd BufWritePost init.lua source <afile> | PackerSync
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
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use "kyazdani42/nvim-web-devicons" -- Add web devicons to vim
  use "kyazdani42/nvim-tree.lua" -- Tree view
  use "akinsho/bufferline.nvim" -- Bufferline
  use "moll/vim-bbye" -- A simple way to close vim buffers
  use "nvim-lualine/lualine.nvim" -- Add a custom statusline
  use "voldikss/vim-floaterm"   -- A floating terminal
  use "ahmedkhalf/project.nvim" -- Project management
  use "lewis6991/impatient.nvim" -- Impatient.vim is a vim plugin that makes vim open faster
  use "lukas-reineke/indent-blankline.nvim" -- Indentation with a blank line
  use "goolord/alpha-nvim" -- Alpha is a dashboard-like plugin
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
  use "folke/which-key.nvim" -- Show keybindings in popup
  use "tpope/vim-surround" -- Surround text with delimiters
  use "alvan/vim-closetag" -- Close tag
  use "ap/vim-css-color" -- Colorize css

  -- Colorschemes
  use "Mofiqul/vscode.nvim"
  use "ghifarit53/tokyonight-vim" -- Tokyonight theme
  use "joshdick/onedark.vim" -- OneDark theme
  use "morhetz/gruvbox" -- Gruvbox theme
  use "drewtempelmeyer/palenight.vim" -- Palenight theme
  use "sainnhe/gruvbox-material" -- Gruvbox Material theme
  use {"dracula/vim", as = "dracula"} -- Dracula theme
  use "arcticicestudio/nord-vim" -- Nord theme
  use "ivanlhz/vim-electron" -- Electron theme
  use "ayu-theme/ayu-vim" -- Ayu theme
  use "romgrk/doom-one.vim" -- Doom-one is a fork of doom-emacs

  -- Completion plugins
  -- use "github/copilot.vim" -- Copilot completion
  use {
      "neoclide/coc.nvim", branch = "release"
  } -- Neovim coc

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- Telescope
  use "nvim-telescope/telescope.nvim" -- telescope plugin for fuzzy find

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  } -- treesitter plugin for syntax highlighting
  use "JoosepAlviste/nvim-ts-context-commentstring" -- context commentstring plugin

  -- Git
  use "lewis6991/gitsigns.nvim" -- git commit signs

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
