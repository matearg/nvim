vim.cmd [[
try
  set termguicolors
  colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
  set background=dark
  set termguicolors
  colorscheme default
endtry
]]
