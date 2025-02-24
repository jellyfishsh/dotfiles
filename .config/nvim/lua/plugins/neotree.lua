return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        filesystem = {
            filtered_items = {
                visible = true,
                hide_dotfiles = false,
                hide_gitignored = false,
            },
            window = {
                position = "current"
            }
        },
        event_handlers = {
            {
                event = "file_open_requested",
                handler = function ()
                    vim.cmd("Neotree close")
                end
            }
        }
    }
}
