local status, n = pcall(require, 'neosolarized')
if (not status) then return end

n.setup({
  comment_italics = true,
  background_set = false,
})
vim.cmd("colorscheme neosolarized")


-- local cb = require('colorbuddy.init')
-- local Color = cb.Color
-- local colors = cb.colors
-- local Group = cb.Group
-- local groups = cb.groups
-- local styles = cb.styles

-- require('neosolarized').setup({
--   comment_italics = true,
-- })

-- local Color, colors, Group, groups, styles = require('colorbuddy').setup()

-- -- Use Color.new(<name>, <#rrggbb>) to create new colors
-- -- They can be accessed through colors.<name>
-- Color.new('background',  '#282c34')
-- Color.new('red',         '#cc6666')
-- Color.new('green',       '#99cc99')
-- Color.new('yellow',      '#f0c674')

-- -- Define highlights in terms of `colors` and `groups`
-- Group.new('Function'        , colors.yellow      , colors.background , styles.bold)
-- Group.new('luaFunctionCall' , groups.Function    , groups.Function   , groups.Function)

-- -- Define highlights in relative terms of other colors
-- Group.new('Error'           , colors.red:light() , nil               , styles.bold)
