return{{
  "neovim/nvim-lspconfig",
  config = function()
    vim.diagnostic.config({
      virtual_lines = true,
      underline = true,
      severity_sort = true,
      -- virtual_text = {
      --   source = "if_many",
      --   spacing = 2,
      -- },
      -- float = {
      --   border = "rounded",
      --   source = "if_many",
      -- },
      -- underline = true,
      -- severity_sort = true,
    })

    vim.lsp.config("ts7", {
      cmd = { "tsc", "--lsp", "--stdio" },
      filetypes = {
        "typescript",
        "typescriptreact",
        "javascript",
        "javascriptreact",
      },
      root_markers = {
        "tsconfig.json",
        "package.json",
        ".git",
      },
    })
    vim.lsp.enable("ts7")
  end,
}}
