return{{
  'nvim-tree/nvim-tree.lua',
  dependencies = {
      'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require("nvim-tree").setup({
      actions = {
        open_file = {
          quit_on_open = true
        }
      }
    })

    -- Set keymaps
    local api = require "nvim-tree.api"
    vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
    vim.keymap.set("n", "<leader>v", api.node.open.vertical)
    vim.keymap.set("n", "<leader>h", api.node.open.horizontal)
  end
}}
