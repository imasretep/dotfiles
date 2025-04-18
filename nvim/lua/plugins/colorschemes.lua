return {
  { 'aliqyan-21/darkvoid.nvim' },
  { 'nyoom-engineering/oxocarbon.nvim' },
  {
    "wnkz/monoglow.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  { 'aktersnurra/no-clown-fiesta.nvim' },
  { 'eldritch-theme/eldritch.nvim' },
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
}
