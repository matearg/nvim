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
vim.bo.shiftwidth = 4   -- Set shiftwidth to 4
vim.bo.tabstop = 4   -- Set tabstop to 4
vim.bo.softtabstop = 4   -- Disable softtabstop
vim.bo.smartindent = true   -- Make indent smart again
vim.bo.autoindent = true   -- Enable autoindent
vim.bo.expandtab = true   -- Expand tabs to spaces
vim.o.laststatus = 3   -- Show status bar
vim.o.showmode = false   -- Disable showmode
vim.o.scrolloff = 8   -- Set scrolloff to 8
vim.o.sidescrolloff = 8   -- Set sidescrolloff to 8
vim.wo.wrap = false   -- Disable wrapping
vim.wo.cursorline = true   -- Highlight current line
vim.o.cmdheight = 2   -- Set cmdheight to 2
vim.wo.signcolumn = "auto:9"   -- Show signs in the right side of the screen
vim.o.hidden = true   -- Hide buffers but let them open
vim.o.backup = false   -- Disable backup files
vim.bo.swapfile = false   -- Disable swapfile
vim.o.writebackup = false   -- Disable writebackup
vim.o.updatetime = 300   -- Set update time to 300ms
vim.o.shortmess = "c"   -- Show messages in the status line
vim.o.compatible = false   -- Disable vim compatibility
vim.o.hlsearch = false   -- Highlight matches
vim.o.incsearch = true   -- Incremental searching
vim.o.ignorecase = true   -- Searches are case insensitive...
vim.o.smartcase = true   -- ... Unless they contain at least one capital letter
vim.o.splitright = true   -- Split buffers to the right
vim.o.splitbelow = true   -- Split buffers below
vim.o.emoji = true   -- Enable emojis
vim.o.lazyredraw = true   -- Dont redraw the whole screen
vim.wo.colorcolumn = "81"
