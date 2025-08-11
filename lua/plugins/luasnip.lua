-- 自定义代码片段 lua/snippets/*.lua
return {
  "L3MON4D3/LuaSnip",
  config = function()
    require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets/" })
    require("luasnip.loaders.from_vscode").lazy_load() -- 可选：加载 VSCode 风格片段
  end,
}
