local opt = vim.opt
local o = vim.o

o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2
o.clipboard = "unnamedplus"
o.cursorline = true

o.cursorlineopt = "both"
o.updatetime = 250

opt.number = true
opt.relativenumber = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.fillchars:append({ eob = " " })

--vim.cmd("colorscheme fluoromachine")
vim.cmd("colorscheme onedark")

-- Show only underline
vim.cmd([[
  hi CursorLine gui=underline cterm=underline guibg=NONE ctermbg=NONE
]])

-- Statusline
vim.o.laststatus = 0
