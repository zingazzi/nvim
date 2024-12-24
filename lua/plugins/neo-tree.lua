return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local ntree = require('neo-tree')
    ntree.setup({
      -- require('neo-tree.command').execute({
      --   position = "right",
      --   source = "filesystem"
      -- }),
      filesysem = {
        hijacks_netrw_behavior = "disabled"
      },
      event_handlers = {

        {
          event = "file_opened",
          handler = function()
            -- auto close
            --  vimc.cmd("Neotree close")
            -- OR
            -- require("neo-tree.command").execute({
            --   position = "right"
            -- })
          end
        },

      }
    })

    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")
  end
}
