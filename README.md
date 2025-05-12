# Neovim 配置

这是一个基于Neovim的个人配置仓库，提供了丰富的功能和优化的开发体验。

## 特性

- 美观现代的UI界面
- 强大的LSP（语言服务器协议）支持
- 高效的文件浏览和搜索
- 智能代码补全
- 舒适的终端集成
- 丰富的快捷键映射

## 目录结构

- `lua/configs/`: 基础配置
  - `mappings.lua`: 快捷键映射
  - `basic.lua`: 基本设置
  - `lazy.lua`: 插件管理器设置
- `lua/plugins/`: 插件配置
- `lua/lsp/`: LSP服务器配置

## 主要插件

### UI 增强

- 状态栏: lualine
- 标签栏: bufferline
- 文件树: nvim-tree
- 通知美化: noice, nvim-notify
- 命令面板: which-key
- 欢迎页: nvim-dashboard
- 缩进指示: indent-blankline

### 编辑体验

- 语法高亮: nvim-treesitter
- 代码补全: nvim-cmp
- 快速跳转: leap.nvim, flash-nvim, hop
- 终端: toggleterm
- 文本环绕: nvim-surround
- 自动括号: nvim-autopairs

### 开发工具

- LSP支持: lspsaga, mason
- 搜索功能: telescope
- 代码格式化: none-ls

## 快捷键

- `<Space>`: Leader键
- `<leader>f`: 搜索文件(名)
- `<leader>F`: 搜索文件内容
- `<leader>w`: 保存文件
- `<leader>t`: 浮动终端
- `<leader>lt`: 切换终端
- `jk`: 退出插入模式

## 安装使用

1. 克隆仓库到本地Neovim配置目录
2. 首次启动会自动安装插件
3. 需要预先安装一些外部依赖如ripgrep等工具
