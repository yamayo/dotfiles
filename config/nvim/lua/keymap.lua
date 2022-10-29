local keymap = vim.keymap

keymap.set('n', 'j', 'gj')
keymap.set('n', 'k', 'gk')
keymap.set('n', 'gj', 'j')
keymap.set('n', 'gk', 'k')
keymap.set('v', 'v', '$h')
keymap.set('n', '<CR>', 'o<Esc>')
keymap.set('n', '<Esc><Esc>', ':nohlsearch<CR>')
keymap.set('n', '<leader>q', ':quit!<Enter>')
keymap.set('i', '<C-h>', '<Left>')
keymap.set('i', '<C-j>', '<Down>')
keymap.set('i', '<C-k>', '<Up>')
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')
