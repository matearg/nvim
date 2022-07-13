local colorscheme = "catppuccin"
--[[ aurora, catppuccin, codemonkey, darkplus, dracula, ferrum, gruvbox-baby,
kanagawa, lunar, nord, onedark, onedarker, onedarkest, onenord, spacedark,
system76, tokyonight, zephyr ]]

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
