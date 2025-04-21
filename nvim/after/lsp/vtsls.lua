return {
  cmd = { "vtsls", "--stdio" },
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  root_markers = { "pnpm-lock.yaml", "tsconfig.json", "package.json", ".git" },
  settings = {
    vtsls = {
      tsserver = {
        trace = "verbose",
      },
    },
  },
}
