return {
  { 'aliqyan-21/darkvoid.nvim' },
  { 'nyoom-engineering/oxocarbon.nvim' },
  {
    "wnkz/monoglow.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true
    },
  },
  { 'aktersnurra/no-clown-fiesta.nvim' },
  {
    'eldritch-theme/eldritch.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true
    }
  },
  {
    'maxmx03/fluoromachine.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      local fm = require 'fluoromachine'

      fm.setup {
        glow = false,
        theme = 'retrowave',
        transparent = true,
      }
    end
  },
  {
    "miikanissi/modus-themes.nvim",
    priority = 1000,
    opts = {
      transparent = true,
    }
  },
  {
    "navarasu/onedark.nvim",
    opts = {
      style = 'deep',
      transparent = true,
    }
  }
}
