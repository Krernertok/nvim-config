return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require("telescope").setup({
      defaults = {
        -- Add any global defaults here
      },
      pickers = {
        -- Include hidden files in live_grep and ignore .git
        live_grep = {
          additional_args = function(opts)
            return {
              "--hidden",
              "--glob", "!.git/*",
              "--glob", "!*/.git/*",
            }
          end,
        },
        -- Include hidden files in find_files and ignore .git
        find_files = {
          hidden = true,
          find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
        },
      },
    })

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fr', builtin.git_files, {})
  end
}
