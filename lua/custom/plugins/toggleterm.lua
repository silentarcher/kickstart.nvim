-- toggleterm: a terminal pane you can show/hide with one key, like VS Code's integrated terminal
-- https://github.com/akinsho/toggleterm.nvim
--
--  <C-\>        toggle terminal 1 (works in normal, insert and terminal mode)
--  2<C-\>       toggle terminal 2 (any number works - keep one for the game, one for git, etc.)
--  :TermSelect  pick from open terminals

vim.pack.add { { src = 'https://github.com/akinsho/toggleterm.nvim', version = vim.version.range '2.*' } }

require('toggleterm').setup {
  open_mapping = [[<c-\>]],
  direction = 'horizontal', -- bottom pane; other options: 'vertical', 'float', 'tab'
  size = 12, -- rows tall
  persist_size = true, -- remember the height if you resize it
  start_in_insert = true, -- ready to type when it opens
}
