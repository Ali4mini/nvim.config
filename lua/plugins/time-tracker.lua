return {
    "ptdewey/pendulum-nvim",
    config = function()
        require("pendulum").setup({

            log_file = vim.fn.expand(
                "$HOME/Documents/time-spent-coding.csv"
            ),
        })
    end,
}
