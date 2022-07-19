require "colors.color-configs"

-- Avalible colorschemes:
-- catppuccin
-- darkplus
-- dracula
-- gruvbox-baby
-- kanagawa
-- nord
-- onedark
-- onenord
-- tokyonight
-- zephyr

local colorscheme = "onenord"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
