return {
  "folke/tokyonight.nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme "tokyonight-night"
    end
}

