local keymap = vim.keymap

keymap.set('n', 'j', 'gj')
keymap.set('n', 'k', 'gk')
keymap.set('n', 'gj', 'j')
keymap.set('n', 'gk', 'k')
keymap.set('v', 'v', '$h')
-- keymap.set('n', '<CR>', 'o<Esc>')
keymap.set('n', '<Esc><Esc>', ':nohlsearch<CR>')
keymap.set('n', '<C-q>', ':q!<CR>')
keymap.set('i', '<C-h>', '<Left>')
keymap.set('i', '<C-j>', '<Down>')
keymap.set('i', '<C-k>', '<Up>')
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')


-- COC
-- local opt = { expr = true, silent = true, replace_keycodes = false }
-- local opts = { silent = false, noremap = true, expr = true, replace_keycodes = false }
-- keymap.set('i', '<CR>', [[coc#pum#visible() ? coc#pum#confirm() : "\<CR>"]], opts)
-- keymap.set("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
-- -- keymap.set("i", "<CR>", 'coc#pum#visible() ? coc#pum#confirm() : "<CR>"', opts)
-- keymap.set('i', '<Tab>', 'coc#pum#visible() ? coc#pum#confirm() : "<Tab>"', opt)
-- keymap.set('i', '<Tab>', 'coc#pum#visible() ? coc#pum#next(1) : "<Tab>"', opt)
-- keymap.set('i', '<S-Tab>', 'coc#pum#visible() ? coc#pum#prev(1) : "<S-Tab>"', opts)
