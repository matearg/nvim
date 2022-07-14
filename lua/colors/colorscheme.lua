-- Put your colorscheme config files down below
require "colors.color-configs.catppuccin"
require "colors.color-configs.dracula"
require "colors.color-configs.gruvbaby"
require "colors.color-configs.kanagawa"
require "colors.color-configs.nord"
-- require "colors.color-configs.onedark"
-- require "colors.color-configs.onenord"
require "colors.color-configs.tokyonight"

-- Set your colorscheme
local colorscheme = "gruvbox-baby"
--[[ aurora, catppuccin, codemonkey, darkplus, dracula, ferrum, gruvbox-baby,
kanagawa, lunar, nord, onedark, onedarker, onedarkest, onenord, spacedark,
system76, tokyonight, zephyr ]]

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
