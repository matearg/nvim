-- Gruvbox-material
vim.g.gruvbox_material_enable_italic = 0
vim.g.gruvbox_material_disable_italic_comment = 1
vim.g.gruvbox_material_background = 'medium'  -- Avalible 'soft', 'medium', 'hard'
vim.g.gruvbox_material_enable_bold = 0
vim.g.gruvbox_material_transparent_background = 1
vim.g.gruvbox_material_show_eob = 0
vim.g.gruvbox_material_palette = 'original' -- Avalible 'material', 'original', 'mix'
vim.g.gruvbox_material_statusline_style = 'original' -- Avalible 'material', 'original', 'mix'
vim.g.gruvbox_material_visual = 'reverse'
vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'

-- OneDark
require('onedark').setup  {
    style = 'darker', -- Chose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
    transparent = false,
    code_style = {
        comments = 'none',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },
    diagnostics = {
        darker = true,
        undercurl = true,
        background = true,
    },
}

-- Tokyonight
vim.g.tokyonight_style = "storm"
vim.g.tokyonight_terminal_colors = true
vim.g.tokyonight_italic_comments = false
vim.g.tokyonight_italic_keywords = false
vim.g.tokyonight_italic_functions = false
vim.g.tokyonight_italic_variables = false
vim.g.tokyonight_transparent = false
vim.g.tokyonight_hide_inactive_statusline = false
vim.g.tokyonight_transparent_sidebar = false
vim.g.tokyonight_dark_sidebar = true
vim.g.tokyonight_dark_float = true
vim.g.tokyonight_lualine_bold = false
