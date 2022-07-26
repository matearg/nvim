require "colors.color-configs"

-- Avalible colorschemes:
-- catppuccin
-- darkplus
-- gruvbox-material
-- onedark

local colorscheme = "catppuccin"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
