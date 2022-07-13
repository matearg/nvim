local status_ok, catppuccin = pcall(require, 'catppuccin')
if not status_ok then
    return
end

vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

catppuccin.setup {
    transparent_background = false,
    term_colors = true,
    styles = {
        comments = "italic",
        conditionals = "italic",
        loops = "NONE",
        functions = "bold",
        keywords = "bold",
        strings = "italic",
        variables = "NONE",
        numbers = "NONE",
        booleans = "NONE",
        properties = "NONE",
        types = "NONE",
        operators = "NONE",
    },
    integrations = {
        treesitter = true,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = "italic",
                hints = "italic",
                warnings = "italic",
                information = "italic",
            },
            underlines = {
                errors = "underline",
                hints = "underline",
                warnings = "underline",
                information = "underline",
            },
        },
        cmp = true,
        gitsigns = true,
        telescope = true,
        nvimtree = {
            enabled = true,
            show_root = true,
            transparent_panel = true,
        },
        which_key = true,
        indent_blankline = {
            enabled = true,
            colored_indent_levels = true,
        },
        dashboard = true,
        bufferline = true,
        markdown = true,
        ts_rainbow = true,
        symbols_outline = true,
    }
}
