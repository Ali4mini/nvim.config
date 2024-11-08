return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "kyazdani42/nvim-web-devicons", opt = true }, -- Optional for icons
    config = function()
        require("lualine").setup({
            options = {
                theme = "auto", -- Use 'auto' to match your colorscheme
                section_separators = { left = "", right = "" },
                component_separators = { left = "", right = "" },
                icons_enabled = true,
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", "diff", "diagnostics" },
                lualine_c = {
                    { "filename", file_status = true, path = 1 }, -- Short relative path
                    {
                        require("pomo").status,
                        cond = require("pomo").is_active,
                    }, -- Display Pomodoro status if active
                },
                lualine_x = {
                    "encoding",
                    "fileformat",
                    "filetype",
                    { "filetype", icon_only = true }, -- Show only the icon
                },
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { "filename" },
                lualine_x = { "location" },
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {},
            extensions = {},
        })
    end,
}
