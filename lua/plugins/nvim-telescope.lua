return {
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
    defaults = {
        cwd = vim.fn.expand("%:p:h"),
        path_display = { "absolute" },
    },
}
