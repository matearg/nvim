local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
	return
end

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")

indent_blankline.setup {
  char = "▏",
  space_char_blankline = " ",
  show_first_indent_level = true,
  show_current_context = true,
  show_current_context_start = true,
  filetype_exclude = {
    "help",
    "startify",
    "dashboard",
    "packer",
    "neogitstatus",
    "NvimTree",
    "Trouble",
  },
  buftype_exclude = {
    'terminal',
    'nofile'
  },
}
