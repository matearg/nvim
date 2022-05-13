-- Gruvbox-material
vim.g.gruvbox_material_enable_italic = 0
vim.g.gruvbox_material_disable_italic_comment = 1
vim.g.gruvbox_material_background = 'medium'  -- Avalible 'soft', 'medium', 'hard'
vim.g.gruvbox_material_enable_bold = 1
vim.g.gruvbox_material_transparent_background = 0
vim.g.gruvbox_material_show_eob = 0
vim.g.gruvbox_material_palette = 'original' -- Avalible 'material', 'original', 'mix'
vim.g.gruvbox_material_statusline_style = 'original' -- Avalible 'material', 'original', 'mix'
vim.g.gruvbox_material_visual = 'reverse'
vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'

-- VScode.nvim
vim.g.vscode_style = 'dark'
vim.g.vscode_transparent = false
vim.g.vscode_italic_comment = 0
vim.g.vscode_disable_nvimtree_bg = true

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
