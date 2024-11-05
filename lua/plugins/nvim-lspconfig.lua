return {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
        setup = {
            tsserver = function(server, opts)
                -- Disable type checking and suggestions for JavaScript files
                opts.settings = {
                    javascript = {
                        validate = false, -- Disable validation (type checking)
                        suggest = {
                            completeFunctionCalls = false, -- Disable function call suggestions
                        },
                    },
                    typescript = {
                        validate = true, -- Keep validation enabled for TypeScript files
                        suggest = {
                            completeFunctionCalls = true, -- Keep function call suggestions for TypeScript
                        },
                    },
                }

                return true -- Return true to proceed with the default setup
            end,
        },
    },
}
