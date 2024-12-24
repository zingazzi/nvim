
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)


require("vim-options")
require("lazy").setup("plugins")


vim.api.nvim_set_keymap('n', '<C-j>', '10j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '10k', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-Down>', '10j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Up>', '10k', { noremap = true, silent = true })
