return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Core (Monolith)
                base00 = "#020202", -- background
                base01 = "#1a1a1a", -- statusline / subtle panels
                base02 = "#262626", -- selection
                base03 = "#6e6e6e", -- comments
                base04 = "#9a9a9a", -- muted foreground
                base05 = "#d1cfcf", -- main foreground
                base06 = "#e0e0e0", -- bright foreground
                base07 = "#ffffff", -- strongest contrast (rare)

                -- Accents (grayscale hierarchy only)
                base08 = "#b0b0b0", -- diagnostics / errors
                base09 = "#bcbcbc", -- numbers / constants
                base0A = "#c8c8c8", -- types / classes
                base0B = "#b8b8b8", -- strings
                base0C = "#a8a8a8", -- regex / special
                base0D = "#d1cfcf", -- functions / keywords
                base0E = "#dcdcdc", -- control keywords
                base0F = "#9a9a9a", -- deprecated
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
