return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
        "nvim-lua/plenary.nvim",
    },
    cmd = { "Neotree" },
    keys = {
        {
            "<Leader>e",
            function()
                require("neo-tree.command").execute({ toggle = true })
            end,
        },
    },
    opts = {
        filesystem = { follow_current_file = { enabled = false } },
    },
}
