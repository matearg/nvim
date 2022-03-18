local status_ok, syntastic = pcall(require, "syntastic")
if not status_ok then
	return
end

vim.g.syntastic_always_populate_loc_list = 1
vim.g.syntastic_auto_loc_list = 1
vim.g.syntastic_check_on_open = 1
vim.g.syntastic_check_on_wq = 0
