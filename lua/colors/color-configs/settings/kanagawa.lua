local status_ok, kanagawa = pcall(require, 'kanagawa')
if not status_ok then
    return
end

-- Kanagawa
kanagawa.setup {
    undercurl = true,           -- enable undercurls
    commentStyle = { italic = false },
    functionStyle = {  },
    keywordStyle = { italic = false },
    statementStyle = { bold = true },
    typeStyle = {},
    variablebuiltinStyle = { italic = false },
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords
    transparent = false,        -- do not set background color
    dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
    globalStatus = true,       -- adjust window separators highlight for laststatus=3
    colors = {},
    overrides = {},
}
