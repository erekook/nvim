local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("vue", {
  s("clg", {
    t("console.log("),
    i(1, "value"), -- 插入点，占位符为 "value"
    t(");"),
    i(0), -- 最后一个插入点，光标最终停留位置
  }),
})

ls.add_snippets("javascript", {
  s("clg", {
    t("console.log("),
    i(1, "value"), -- 插入点，占位符为 "value"
    t(");"),
    i(0), -- 最后一个插入点，光标最终停留位置
  }),

  -- setTimeout 代码片段
  s(
    "settimeout",
    fmt(
      [[
        setTimeout(() => {{
          {}
        }}, {});
      ]],
      {
        i(1, "// code here"), -- 第一个插入点：函数体内容
        i(2, "1000"), -- 第二个插入点：延迟时间（默认1000ms）
      }
    )
  ),

  -- setInterval 代码片段
  s(
    "setinterval",
    fmt(
      [[
        setInterval(() => {{
          {}
        }}, {});
      ]],
      {
        i(1, "// code here"), -- 第一个插入点：函数体内容
        i(2, "1000"), -- 第二个插入点：间隔时间（默认1000ms）
      }
    )
  ),
})

ls.add_snippets("typescript", {
  s("clg", {
    t("console.log("),
    i(1, "value"), -- 插入点，占位符为 "value"
    t(");"),
    i(0), -- 最后一个插入点，光标最终停留位置
  }),

  -- setTimeout 代码片段
  s(
    "settimeout",
    fmt(
      [[
        setTimeout(() => {{
          {}
        }}, {});
      ]],
      {
        i(1, "// code here"), -- 第一个插入点：函数体内容
        i(2, "1000"), -- 第二个插入点：延迟时间（默认1000ms）
      }
    )
  ),

  -- setInterval 代码片段
  s(
    "setinterval",
    fmt(
      [[
        setInterval(() => {{
          {}
        }}, {});
      ]],
      {
        i(1, "// code here"), -- 第一个插入点：函数体内容
        i(2, "1000"), -- 第二个插入点：间隔时间（默认1000ms）
      }
    )
  ),
})
