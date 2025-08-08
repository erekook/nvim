local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
-- local f = ls.function_node

ls.add_snippets("javascript", {
  -- 1. wx.navigateTo (跳转到非 TabBar 页面，保留当前页面)
  s("wx-nt", {
    t({ "wx.navigateTo({", "\turl: '" }),
    i(1, "/pages/index/index"), -- 目标页面路径
    t({ "',", "\tsuccess: (res) => {" }),
    i(2, "console.log('Navigate success');"), -- 成功回调
    t({ "", "\t},", "\tfail: (err) => {", "\t\tconsole.error('Navigate failed', err);" }),
    i(3, ""), -- 失败回调
    t({ "", "\t}", "});" }),
  }),

  -- 2. wx.redirectTo (跳转到非 TabBar 页面，关闭当前页面)
  s("wx-rt", {
    t({ "wx.redirectTo({", "\turl: '" }),
    i(1, "/pages/index/index"), -- 目标页面路径
    t({ "',", "\tsuccess: (res) => {" }),
    i(2, "console.log('Redirect success');"), -- 成功回调
    t({ "", "\t},", "\tfail: (err) => {", "\t\tconsole.error('Redirect failed', err);" }),
    i(3, ""), -- 失败回调
    t({ "", "\t}", "});" }),
  }),

  -- 3. wx.switchTab (跳转到 TabBar 页面)
  s("wx-st", {
    t({ "wx.switchTab({", "\turl: '" }),
    i(1, "/pages/home/home"), -- TabBar 页面路径
    t({ "',", "\tsuccess: (res) => {" }),
    i(2, "console.log('Switch tab success');"), -- 成功回调
    t({ "", "\t},", "\tfail: (err) => {", "\t\tconsole.error('Switch tab failed', err);" }),
    i(3, ""), -- 失败回调
    t({ "", "\t}", "});" }),
  }),

  -- 4. wx.navigateBack (返回上一页面或多级页面)
  s("wx-nb", {
    t({ "wx.navigateBack({", "\tdelta: " }),
    i(1, "1"), -- 返回的页面数
    t({ "", "});" }),
  }),

  -- 5. wx.reLaunch (关闭所有页面，跳转到指定页面)
  s("wx-rl", {
    t({ "wx.reLaunch({", "\turl: '" }),
    i(1, "/pages/index/index"), -- 目标页面路径
    t({ "',", "\tsuccess: (res) => {" }),
    i(2, "console.log('Relaunch success');"), -- 成功回调
    t({ "", "\t},", "\tfail: (err) => {", "\t\tconsole.error('Relaunch failed', err);" }),
    i(3, ""), -- 失败回调
    t({ "", "\t}", "});" }),
  }),

  -- 1. wx.showToast (显示提示框)
  s("wxtoast", {
    t({ "wx.showToast({", "\ttitle: '" }),
    i(1, "提示信息"), -- 提示内容
    t({ "',", "\ticon: '" }),
    i(2, "success"), -- 图标类型: success, error, loading, none
    t({ "',", "\tduration: " }),
    i(3, "1500"), -- 持续时间（毫秒）
    t({ "", "\tsuccess: (res) => {" }),
    i(4, "console.log('Toast shown');"), -- 成功回调
    t({ "", "\t},", "\tfail: (err) => {", "\t\tconsole.error('Toast failed', err);" }),
    i(5, ""), -- 失败回调
    t({ "", "\t}", "});" }),
  }),

  -- 2. wx.showModal (显示模态对话框)
  s("wxmodal", {
    t({ "wx.showModal({", "\ttitle: '" }),
    i(1, "提示"), -- 对话框标题
    t({ "',", "\tcontent: '" }),
    i(2, "确定要执行此操作吗？"), -- 对话框内容
    t({ "',", "\tshowCancel: " }),
    i(3, "true"), -- 是否显示取消按钮
    t({ "", "\tcancelText: '" }),
    i(4, "取消"), -- 取消按钮文字
    t({ "',", "\tconfirmText: '" }),
    i(5, "确定"), -- 确定按钮文字
    t({
      "',",
      "\tsuccess: (res) => {",
      "\t\tif (res.confirm) {",
      "\t\t\tconsole.log('用户点击确定');",
    }),
    i(6, ""), -- 确定按钮逻辑
    t({ "", "\t\t} else if (res.cancel) {", "\t\t\tconsole.log('用户点击取消');" }),
    i(7, ""), -- 取消按钮逻辑
    t({ "", "\t\t}", "\t},", "\tfail: (err) => {", "\t\tconsole.error('Modal failed', err);" }),
    i(8, ""), -- 失败回调
    t({ "", "\t}", "});" }),
  }),

  -- 3. wx.showLoading (显示加载提示)
  s("wxloading", {
    t({ "wx.showLoading({", "\ttitle: '" }),
    i(1, "加载中"), -- 加载提示文字
    t({ "',", "\tmask: " }),
    i(2, "true"), -- 是否显示透明蒙层
    t({ "", "\tsuccess: (res) => {" }),
    i(3, "console.log('Loading shown');"), -- 成功回调
    t({ "", "\t},", "\tfail: (err) => {", "\t\tconsole.error('Loading failed', err);" }),
    i(4, ""), -- 失败回调
    t({ "", "\t}", "});" }),
  }),

  -- 4. wx.hideLoading (隐藏加载提示)
  s("wxhideloading", {
    t({ "wx.hideLoading({", "\tsuccess: (res) => {" }),
    i(1, "console.log('Loading hidden');"), -- 成功回调
    t({ "", "\t},", "\tfail: (err) => {", "\t\tconsole.error('Hide loading failed', err);" }),
    i(2, ""), -- 失败回调
    t({ "", "\t}", "});" }),
  }),

  -- 5. wx.showActionSheet (显示动作菜单)
  s("wxactionsheet", {
    t({ "wx.showActionSheet({", "\titemList: [" }),
    i(1, "'选项1', '选项2', '选项3'"), -- 菜单选项列表
    t({ "],", "\tsuccess: (res) => {", "\t\tconsole.log('选中:', res.tapIndex);" }),
    i(2, ""), -- 选中选项逻辑
    t({ "", "\t},", "\tfail: (err) => {", "\t\tconsole.error('Action sheet failed', err);" }),
    i(3, ""), -- 失败回调
    t({ "", "\t}", "});" }),
  }),
})
