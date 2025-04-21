require("mappings")
require("config.lazy")
require("options")
require("alpha-config")

vim.diagnostic.config({
  virtual_lines = {
    current_line = true,
  },
})

vim.lsp.enable({
  "lua_ls",
  "vtsls",
  "clangd",
})
