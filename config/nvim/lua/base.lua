vim.opt.encoding = 'utf-8'

vim.opt.list = true
vim.opt.number = true
vim.opt.wrap = true
vim.opt.textwidth = 0
vim.opt.ruler = true
-- vim.opt.cursorline = true
vim.opt.laststatus = 2
vim.opt.scrolloff = 5
vim.opt.showmatch = true

vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 0

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.autoread = true
vim.opt.hidden = true
vim.opt.switchbuf = 'useopen'
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.backup = false
vim.opt.completeopt= { 'menuone', 'noinsert' }

vim.opt.mouse = 'a'

vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.listchars:append('tab:> ')
vim.opt.listchars:append('trail:-')
vim.opt.listchars:append('extends:»')
vim.opt.listchars:append('precedes:«')
vim.opt.listchars:append('nbsp:%')
vim.opt.listchars:append('eol:↲')

vim.opt.matchpairs = vim.bo.matchpairs .. ',<:>'
vim.opt.clipboard = 'unnamed'

vim.opt.termguicolors = true
vim.g.mapleader = ' '
