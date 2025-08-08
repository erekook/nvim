return {
  {
    "mattn/emmet-vim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      -- 可选：自定义 Emmet 设置
      vim.g.user_emmet_leader_key = "<C-e>" -- 设置触发键为 Ctrl+e
      vim.g.user_emmet_mode = "i" -- 仅在插入模式启用
      vim.g.user_emmet_settings = {
        vue = {
          ["html"] = {
            snippets = {
              -- 添加 Vue 特定的 Emmet 片段（可选）
            },
          },
        },
      }
    end,
  },
}
