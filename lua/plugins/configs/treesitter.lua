local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = "all",             -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false,                 -- Install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "phpdoc" },        -- List of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true,                      -- False will disable the whole extension
    disable = { "toml", "markdown" },   -- List of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
