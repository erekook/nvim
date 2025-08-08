return {
  {
    "ellisonleao/gruvbox.nvim",
    -- config = function()
    --   require("gruvbox").setup({
    --     -- 默认配置
    --     terminal_colors = true, -- 启用终端颜色
    --     undercurl = true,
    --     underline = true,
    --     bold = true,
    --     italic = { strings = true, emphasis = true, comments = true, operators = false, folds = true },
    --     strikethrough = true,
    --     invert_selection = false,
    --     invert_signs = false,
    --     invert_tabline = false,
    --     inverse = true,
    --     contrast = "hard", -- 可选值: "hard", "soft" 或 ""（默认）
    --     -- 自定义调色板
    --     palette_overrides = {
    --       bright_green = "#99cc99", -- 修改亮绿色
    --       -- dark0_hard = "#000000", -- 设置硬对比背景为纯黑
    --     },
    --     -- 自定义高亮组
    --     overrides = {
    --       SignColumn = { bg = "#ff9900" }, -- 修改签名栏背景
    --       ["@comment.lua"] = { fg = "#7c6f64", bg = "#000000" }, -- 修改 Lua 注释颜色
    --       ["@lsp.type.method"] = { fg = "#d79921" }, -- 修改 LSP 方法颜色
    --     },
    --   })
    --   vim.cmd("colorscheme gruvbox")
    -- end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
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
  {
    "sphamba/smear-cursor.nvim",

    opts = {
      -- Smear cursor when switching buffers or windows.
      smear_between_buffers = true,

      -- Smear cursor when moving within line or to neighbor lines.
      -- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
      smear_between_neighbor_lines = true,

      -- Draw the smear in buffer space instead of screen space when scrolling
      scroll_buffer_space = true,

      -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
      -- Smears will blend better on all backgrounds.
      legacy_computing_symbols_support = true,

      -- Smear cursor in insert mode.
      -- See also `vertical_bar_cursor_insert_mode` and `distance_stop_animating_vertical_bar`.
      smear_insert_mode = true,

      -- cursor_color = "#A5EFFF",

      transparent_bg_fallback_color = "#303030",

      stiffness = 0.8, -- 0.6      [0, 1]
      trailing_stiffness = 0.5, -- 0.4      [0, 1]
      stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
      trailing_stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
      damping = 0.8, -- 0.65     [0, 1]
      damping_insert_mode = 0.8, -- 0.7      [0, 1]
      distance_stop_animating = 0.5, -- 0.1      > 0
    },
  },
}
