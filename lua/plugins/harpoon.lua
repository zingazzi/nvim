return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-lua/popup.nvim'
  },
  config = function()
    local harpoon = require('harpoon.ui')
    local mark = require('harpoon.mark')
    vim.keymap.set('n', '<leader>h', function()
      harpoon.toggle_quick_menu()
    end)
    vim.keymap.set('n', '<leader>1', function()
      harpoon.nav_file(1)
    end)
    vim.keymap.set('n', '<leader>2', function()
      harpoon.nav_file(2)
    end)
    vim.keymap.set('n', '<leader>3', function()
      harpoon.nav_file(3)
    end)
    vim.keymap.set('n', '<leader>4', function()
      harpoon.nav_file(4)
    end)
    vim.keymap.set('n', '<leader>5', function()
      harpoon.nav_file(5)
    end)
    vim.keymap.set('n', '<leader>6', function()
      harpoon.nav_file(6)
    end)
    vim.keymap.set('n', '<leader>7', function()
      harpoon.nav_file(7)
    end)
    vim.keymap.set('n', '<leader>8', function()
      harpoon.nav_file(8)
    end)
    vim.keymap.set('n', '<leader>9', function()
      harpoon.nav_file(9)
    end)
    vim.keymap.set('n', '<leader>a', function()
      mark.add_file()
    end)
  end
}
