local status, telescope = pcall(require, 'telescope')
if (not status) then return end
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files)
vim.keymap.set('n', '<leader>g', builtin.live_grep)
vim.keymap.set('n', '<leader>b', builtin.buffers)
vim.keymap.set('n', '<leader>h', builtin.help_tags)

local fb_actions = require('telescope._extensions.file_browser.actions')

telescope.setup({
  defaults = {
    mappings = {},
  },
  pickers = {
    find_files = {
      theme = 'dropdown',
    },
    live_grep = {
      theme = 'dropdown',
    },
    buffers = {
      theme = 'dropdown',
    },
    help_tags = {
      theme = 'dropdown',
    },
  },
  extensions = {
    file_browser = {
      theme = 'ivy',
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = false,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
          ["N"] = fb_actions.create,
          ["R"] = fb_actions.rename,
          ["D"] = fb_actions.remove,
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
})

telescope.load_extension 'file_browser'
vim.keymap.set('n', '<leader>e', function()
  telescope.extensions.file_browser.file_browser({
    path = '%:p:h',
  })
end)
