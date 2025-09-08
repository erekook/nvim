return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "desert",
    },
  },
  {
    "nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup({
        -- 自定义 Vue 项目相关文件类型的图标和颜色
        override = {
          vue = {
            icon = "󰡄", -- Vue 专用图标（Nerd Fonts）
            color = "#42a5f5", -- Vue 官方蓝色
            cterm_color = "39",
            name = "Vue",
          },
          js = {
            icon = "", -- JavaScript 图标
            color = "#f7df1e", -- JavaScript 黄色
            cterm_color = "226",
            name = "JavaScript",
          },
          ts = {
            icon = "", -- TypeScript 图标
            color = "#3178c6", -- TypeScript 蓝色
            cterm_color = "26",
            name = "TypeScript",
          },
          css = {
            icon = "", -- CSS 图标
            color = "#264de9", -- CSS 蓝色
            cterm_color = "33",
            name = "Css",
          },
          scss = {
            icon = "", -- SCSS 图标
            color = "#c6538c", -- SCSS 粉红色
            cterm_color = "161",
            name = "Scss",
          },
          html = {
            icon = "", -- HTML 图标
            color = "#e34c26", -- HTML 橙色
            cterm_color = "166",
            name = "Html",
          },
          json = {
            icon = "", -- JSON 图标
            color = "#cbcb41", -- JSON 黄色
            cterm_color = "185",
            name = "Json",
          },
          md = {
            icon = "", -- Markdown 图标
            color = "#519aba", -- Markdown 蓝色
            cterm_color = "74",
            name = "Markdown",
          },
          -- 针对 Vue 项目中常见的配置文件
          ["package.json"] = {
            icon = "󰎙", -- npm 图标
            color = "#cc3534", -- npm 红色
            cterm_color = "160",
            name = "PackageJson",
          },
          [".eslintrc"] = {
            icon = "󰱺", -- ESLint 图标
            color = "#4b32c3", -- ESLint 紫色
            cterm_color = "56",
            name = "Eslintrc",
          },
          [".gitignore"] = {
            icon = "", -- Git 图标
            color = "#f1502f", -- Git 橙红色
            cterm_color = "160",
            name = "GitIgnore",
          },
        },
        -- 全局启用颜色
        color_icons = true,
        -- 默认图标（用于未匹配的文件类型）
        default = true,
      })
    end,
  },
  -- 光标拖尾动画

  --   "sphamba/smear-cursor.nvim",
  -- },
}
