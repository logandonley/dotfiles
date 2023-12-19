return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "css", "python", "go", "tsx", "bash" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
 }
