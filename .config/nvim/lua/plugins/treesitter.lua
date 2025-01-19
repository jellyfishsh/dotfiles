local languages = {"c", "lua", "vim", "vimdoc", "javascript", "html", "java", "typescript", "tsx", "python"}
local M = {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    opts = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = languages,
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}


return { M }

