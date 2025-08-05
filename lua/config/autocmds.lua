-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.wxml",
  callback = function()
    vim.bo.filetype = "html" -- 将 .wxml 设置为 html 文件类型
  end,
  desc = "Treat .wxml files as HTML",
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.wxss",
  callback = function()
    vim.bo.filetype = "css" -- 将 .wxss 设置为 css 文件类型
  end,
  desc = "Treat .wxss files as css",
})
