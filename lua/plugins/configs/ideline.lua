local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

local hide_in_width = function()
  return vim.fn.winwidth(0) > 80
end

local diagnostics = {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  sections = { "error", "warn" },
  symbols = { error = " ", warn = " " },
  colored = false,
  always_visible = true,
}

local diff = {
  "diff",
  colored = false,
  symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
  cond = hide_in_width,
}

local filetype = {
  "filetype",
  icons_enabled = false,
}

local location = {
  "location",
  padding = 0,
}

local spaces = function()
  return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

lualine.setup {
  options = {
    globalstatus = true,
    icons_enabled = true,
    theme = "auto",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { "alpha", "dashboard" },
    always_divide_middle = true,
  },
  sections = {
    -- lualine_a = { "mode" },
    lualine_a = { "" },
    lualine_b = { diagnostics, spaces },
    lualine_c = { 'os.date("%H:%M", os.time())' },
    lualine_x = { "branch" },
    lualine_y = { diff, "encoding", filetype },
    lualine_z = { location },
    -- lualine_z = { "progress" },
  },
}

-- Trigger rerender of status line every second for clock
if _G.Statusline_timer == nil then
    _G.Statusline_timer = vim.loop.new_timer()
else
    _G.Statusline_timer:stop()
end
_G.Statusline_timer:start(0, 1000, vim.schedule_wrap(
                              function() vim.api.nvim_command('redrawstatus') end))