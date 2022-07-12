vim.cmd [[
try
  colorscheme onenord
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
endtry
]]
