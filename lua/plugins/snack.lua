return {
  -- lazy.nvim
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      picker = {
        formatters = {
          file = {
            truncate = false, -- 禁用路径截断，显示完整路径
          },
        },
      },
    },
  },
}
