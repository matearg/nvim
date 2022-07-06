local status_ok, onedark = pcall(require, "onedark")
if not status_ok then
  return
end

-- OneDark
onedark.setup  {
    style = 'dark',      -- Chose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
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
