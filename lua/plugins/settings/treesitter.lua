local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

treesitter.setup {
  ensure_installed = "all",                    -- One of "all", or a list of languages
  -- sync_install = false,                     -- Install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "" },                     -- List of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true,                             -- False will disable the whole extension
    disable = { "toml", "markdown", "css" },   -- List of language that will be disabled
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  rainbow = {
    enable = true,
    disable = { "" },                         -- list of languages you want to disable the plugin for
    extended_mode = true,                     -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil,                     -- Do not enable for files with more than n lines, int
  },
  indent = { enable = true, disable = { "python", "css" } },
}
