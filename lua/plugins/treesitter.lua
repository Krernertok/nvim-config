return{{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "bash",
        "c",
        "go",
        "groovy",
        "hcl",
        "html",
        "lua",
        "python",
        "terraform",
        "vim",
        "vimdoc",
        "yaml",
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
}} 
