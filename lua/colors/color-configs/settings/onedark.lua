-- OneDark
require('onedark').setup  {
    style = 'cool',      -- Chose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
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
