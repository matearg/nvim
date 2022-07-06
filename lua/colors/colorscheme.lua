vim.cmd [[
try
  colorscheme zephyr
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
endtry
]]
