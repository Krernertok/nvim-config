vim.api.nvim_create_autocmd('FileType', {
  pattern = { "*" },
  callback = function(args) 
    local ft = vim.bo[args.buf].filetype
    if ft == "c" then
      require("languages/c")
    -- else if ft == "programming_language" then
    --   do something else 
    end
 end
})
