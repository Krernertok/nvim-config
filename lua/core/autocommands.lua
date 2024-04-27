vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("go fmt", { clear = true }),
  pattern = "*.go",
  callback = function()
    job_id = vim.fn.jobstart({"gofmt", vim.api.nvim_buf_get_name(0)}, {
      stdin = "pipe",
      stdout_buffered = true,
      on_stdout = function(_, data) 
        if data then
          vim.api.nvim_buf_set_lines(0, 0, -1, false, data)
        end
      end
    })

    buffer_text = vim.api.nvim_buf_get_lines(0, 0, -1, false)
    vim.api.nvim_chan_send(job_id, table.concat(buffer_text, "\n"))
    vim.fn.chanclose(job_id, "stdin")

    vim.fn.jobwait({job_id})
    vim.cmd(":w")
  end
})
