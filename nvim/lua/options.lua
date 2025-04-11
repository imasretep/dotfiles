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
opt.termguicolors = false
opt.fillchars:append({ eob = " " })

--- WSL2 Yank
vim.g.clipboard = {
	name = "win32yank-wsl",
	copy = {
		["+"] = "win32yank.exe -i --crlf",
		["*"] = "win32yank.exe -i --crlf",
	},
	paste = {
		["+"] = "win32yank.exe -o --lf",
		["*"] = "win32yank.exe -o --lf",
	},
	cache_enabled = false,
}

vim.cmd("colorscheme fluoromachine")

-- Show only underline
vim.cmd([[
  hi CursorLine gui=underline cterm=underline guibg=NONE ctermbg=NONE
]])

-- Statusline
vim.o.laststatus = 2

vim.cmd([[
  highlight StatusLine guibg=NONE guifg=#ffb6c1
  highlight StatusLineNC guibg=NONE guifg=#888888
]])

vim.o.statusline = table.concat({
	"%f",
	" %m",
	" %r",
	"  ✨%{&filetype}",
	" %= ",
	"📍Ln %l/%L, Col %c ",
	" [%p%%] ",
	" ⏰ %{v:lua.MyTime()} ",
})

function _G.MyTime()
	return os.date("%H:%M")
end
