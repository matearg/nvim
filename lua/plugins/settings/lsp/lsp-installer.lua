local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

local servers = {
  "clangd",
  "html",
  "jsonls",
  "powershell_es",
  "pyright",
  "rust_analyzer",
  "sumneko_lua",
  "tsserver",
  "yamlls",
  "vimls",
}

lsp_installer.setup {
  ensure_installed = { "clangd", "html", "jsonls", "powershell_es", "pyright", "rust_analyzer", "sumneko_lua", "tsserver", "yamlls", "vimls" },

  ui = {
    -- Whether to automatically check for outdated servers when opening the UI window.
    check_outdated_servers_on_open = true,

    -- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
    border = "rounded",

    icons = {
      -- The list icon to use for installed servers.
      server_installed = "◍",
      -- The list icon to use for servers that are pending installation.
      server_pending = "◍",
      -- The list icon to use for servers that are not installed.
      server_uninstalled = "◍",
    },
  },
}

-- lsp_installer.setup()

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = require("plugins.settings.lsp.handlers").on_attach,
    capabilities = require("plugins.settings.lsp.handlers").capabilities,
  }

  if server == "sumneko_lua" then
    local sumneko_opts = require "plugins.settings.lsp.settings.sumneko_lua"
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  if server == "pyright" then
    local pyright_opts = require "plugins.settings.lsp.settings.pyright"
    opts = vim.tbl_deep_extend("force", pyright_opts, opts)
  end

  if server == "jsonls" then
    local jsonls_opts = require "plugins.settings.lsp.settings.jsonls"
    opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
  end

  lspconfig[server].setup(opts)
end
