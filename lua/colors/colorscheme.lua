vim.cmd [[
try
  set termguicolors
  colorscheme palenight
catch /^Vim\%((\a\+)\)\=:E185/
  set background=dark
  set termguicolors
  colorscheme default
endtry
]]
