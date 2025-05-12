-- 安装 telescope
-- 用途: 模糊搜索文件、字符串、命令等
return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        -- plenary.nvim 是 telescope 的依赖项
        "nvim-lua/plenary.nvim",
        {
            -- 使用 fzf 作为搜索引擎，提高搜索性能
            "nvim-telescope/telescope-fzf-native.nvim",
            -- 编译 fzf-native (更简单的 make 命令，在 macOS 上更可靠)
            build = "make",
        },
    },
    -- 使用 :Telescope 命令时才加载插件
    cmd = "Telescope",
    opts = {
        extensions = {
            fzf = {
                fuzzy = true,                   -- 启用模糊搜索
                override_generic_sorter = true, -- 覆盖默认的排序器
                override_file_sorter = true,    -- 覆盖默认的文件排序器
                case_mode = "smart_case",       -- 智能大小写匹配
            },
        },
    },
    config = function(_, opts)
        local telescope = require "telescope"
        telescope.setup(opts)
        -- 加载 fzf 扩展
        telescope.load_extension("fzf")
    end,
}
