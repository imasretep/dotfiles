return {
  "neovim/nvim-lspconfig",
  dependencies = { 'saghen/blink.cmp' },

  config = function()
    local capabilities = require('blink.cmp').get_lsp_capabilities()
    local lspconfig = require('lspconfig')

    lspconfig['lua_ls'].setup({ capabilities = capabilities })
    lspconfig['clangd'].setup({ capabilities = capabilities })
    lspconfig['asm_lsp'].setup({ capabilities = capabilities, filetypes = { 'asm', 'vmasm', 's' } })
    lspconfig['vtsls'].setup({ capabilities = capabilities })

    vim.diagnostic.config({
      virtual_text = {
        prefix = "●",
        spacing = 2,
      },
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
    })
  end
}
