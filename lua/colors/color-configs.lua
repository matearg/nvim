-- Gruvbox-material
vim.g.gruvbox_material_enable_italic = 0
vim.g.gruvbox_material_disable_italic_comment = 1
vim.g.gruvbox_material_background = 'medium'  -- Avalible 'soft', 'medium', 'hard'
vim.g.gruvbox_material_enable_bold = 1
vim.g.gruvbox_material_transparent_background = 1
vim.g.gruvbox_material_palette = 'original'
vim.g.gruvbox_material_statusline_style = 'original'
vim.g.gruvbox_material_visual = 'reverse'

-- Tokyonight
vim.g.tokyonight_disable_italic_comment = 1
vim.g.tokyonight_enable_italic = 0
vim.g.tokyonight_style = 'night'  -- Avalible 'night', 'storm'
vim.g.tokyonight_transparent_background = 1

-- Dracula
vim.g.dracula_bold = 1
vim.g.dracula_italic = 0
vim.g.dracula_underline = 1
vim.g.dracula_undercurl = 1
vim.g.dracula_full_special_attrs_support = 1
vim.g.dracula_inverse = 1
vim.g.dracula_colorterm = 0

-- VScode.nivm
vim.g.vscode_style = "dark"
vim.g.vscode_transparent = false
vim.g.vscode_italic_comment = 0
vim.g.vscode_disable_nvimtree_bg = true

-- OneDark
require('onedark').setup  {
    style = 'dark', -- Chose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
    transparent = true,
    code_style = {
        comments = 'none',
        keywords = 'bold',
        functions = 'bold',
        strings = 'none',
        variables = 'none'
    },
    diagnostics = {
        darker = true,
        undercurl = true,
        background = true,
    },
}

-- Nord
vim.g.nord_contrast = true
vim.g.nord_borders = true
vim.g.nord_disable_background = false
vim.g.nord_italic = false
vim.g.nord_cursorline_transparent = false
vim.g.nord_enable_sidebar_background = false
