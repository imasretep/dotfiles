-- LEADER
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Neotree
vim.api.nvim_set_keymap('n', ',nn', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- FZF
vim.keymap.set('n', '<leader>ff', ':FzfLua files<CR>', { noremap = true, silent = true, desc = "FZF File Search" })
vim.keymap.set('n', '<leader>bb', ':FzfLua buffers<CR>', { noremap = true, silent = true, desc = "FZF Buffer Search" })

-- Buffer
vim.keymap.set('n', '<leader>bk', ':bd<CR>', { noremap = true, silent = true, desc = "Close Buffer" })
