return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettierd", "prettier" },
        typescript = { "prettierd", "prettier" },
        javascriptreact = { "prettierd", "prettier" },
        typescriptreact = { "prettierd", "prettier" },
        json = { "prettierd", "prettier" },
        graphql = { "prettierd", "prettier" },
        markdown = { "prettierd", "prettier" },
      },
      formatters = {
        prettierd = { prepend_args = {}, stop_after_first = true },
        prettier = { prepend_args = {}, stop_after_first = true },
      },
    })
  end,
}
