local g = vim.g
local o = vim.o

o.guicursor = ""

o.nu = true
o.relativenumber = true

o.errorbells = false

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

o.smartindent = true

o.wrap = false

o.swapfile = false
o.backup = false
--o.undodir = os.getenv("HOME") .. "/.vim/undodir"
--o.undofile = true

o.hlsearch = false
o.incsearch = true
o.termguicolors = true

o.scrolloff = 8
o.signcolumn = "yes"

-- Give more space for displaying messages.
o.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
o.updatetime = 50

o.colorcolumn = "80"

g.mapleader = " "
