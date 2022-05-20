vim.cmd [[
try
  set termguicolors
  colorscheme calvera
catch /^Vim\%((\a\+)\)\=:E185/
  set background=dark
  set termguicolors
  colorscheme default
endtry
]]
