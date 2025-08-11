local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

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
})

ls.add_snippets("typescript", {
  s("clg", {
    t("console.log("),
    i(1, "value"), -- 插入点，占位符为 "value"
    t(");"),
    i(0), -- 最后一个插入点，光标最终停留位置
  }),
})
