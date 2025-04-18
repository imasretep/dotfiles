return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    winopts = {
      split = "botright new",
    },
    files = {
      cmd = "rg --files --hidden --glob '!.git/*' --glob '!node_modules/*'"
    },
    grep = {
      rg_opts = "--hidden --column --line-number --no-heading --color=always --smart-case --glob '!node_modules/*'"
    }
  }
}
