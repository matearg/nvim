-- Basic configs 
vim.bo.syntax = "on"   -- Enable syntax highlighting
vim.wo.number = true   -- Show line numbers
vim.wo.numberwidth = 1   -- Show line numbers with 1 digit
vim.wo.relativenumber = true   -- Show relative line numbers
vim.o.mouse = "a"   -- Enable mouse support
vim.o.clipboard = "unnamedplus"   -- Enable clipboard support
vim.o.showcmd = true   -- Show command in status line
vim.o.ruler = true   -- Show a ruler
vim.o.encoding = "utf-8"   -- Set encoding
vim.o.showmatch = true   -- Show matching brackets
vim.bo.shiftwidth = 4   -- Set shiftwidth to 2
vim.bo.tabstop = 4   -- Set tabstop to 2
vim.bo.softtabstop = 4   -- Set softtabstop to 2
vim.bo.expandtab = true   -- Expand tabs to spaces
vim.bo.autoindent = true   -- Disable autoindent
vim.o.laststatus = 2   -- Show status bar
vim.o.showmode = false   -- Disable showmode
vim.o.scrolloff = 8   -- Set scrolloff to 8
vim.o.sidescrolloff = 8   -- Set sidescrolloff to 8
vim.wo.wrap = false   -- Disable wrapping
vim.wo.cursorline = true   -- Highlight current line
vim.o.cmdheight = 2   -- Set cmdheight to 2
vim.wo.signcolumn = "auto"   -- Show signs in the right side of the screen
vim.bo.swapfile = false   -- Disable swapfile
vim.o.hidden = true   -- Hide buffers but let them open
vim.o.backup = false   -- Disable backup files
vim.bo.swapfile = false   -- Disable swapfile
vim.o.writebackup = false   -- Disable writebackup
vim.o.updatetime = 300   -- Set update time to 300ms
vim.o.shortmess = "c"   -- Show messages in the status line
vim.o.compatible = false   -- Disable vim compatibility
vim.o.hlsearch = false   -- highlight matches
vim.o.incsearch = true   -- incremental searching
vim.o.ignorecase = true   -- searches are case insensitive...
vim.o.smartcase = true   -- ... unless they contain at least one capital letter Basic configurations
vim.o.completeopt = "menuone"
vim.o.completeopt = "noselect"
