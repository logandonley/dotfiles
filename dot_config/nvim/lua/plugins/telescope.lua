return {
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Search buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Search helps' })
    vim.keymap.set('v', '<leader>fs', builtin.grep_string, { desc = 'Search selection' })
    vim.keymap.set('n', '<leader>fm', builtin.man_pages, { desc = 'Search man pages' })
    vim.keymap.set('n', '<leader>ft', builtin.filetypes, { desc = 'Search filetypes' })
  end
}
