local colorscheme = "dracula"
--[[ aurora, codemonkey, darkplus, dracula, ferrum, gruvbox-baby,
kanagawa, lunar, onedark, onedarker, onedarkest, onenord, spacedark,
system76, tokyonight, zephyr ]]

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
