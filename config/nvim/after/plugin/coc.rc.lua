local keymap = vim.keymap

local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
keymap.set('i', '<CR>', [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
keymap.set('i', '<Tab>', [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<Tab>\<c-r>=coc#on_enter()\<Tab>"]], opts)
-- keymap.set('i', '<Tab>', [[coc#pum#visible() ? coc#pum#confirm() : '<Tab>']], opts)
