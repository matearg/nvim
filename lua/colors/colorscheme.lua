vim.cmd [[
try
  set termguicolors
  colorscheme doom-one
catch /^Vim\%((\a\+)\)\=:E185/
  set background=dark
  set termguicolors
  colorscheme default
endtry
]]
