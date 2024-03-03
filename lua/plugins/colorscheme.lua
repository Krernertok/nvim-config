return {
  "sainnhe/sonokai",
  name = "sonokai",
  priority = 1000,
  config = function()
    vim.g.sonokai_style = 'atlantis'
    vim.cmd([[colorscheme sonokai]])
  end
}
--  "catppuccin/nvim",
--  name = "catppuccin",
--  priority = 1000,
--  config = function()
--    vim.cmd([[colorscheme catppuccin-mocha]])
--  end
