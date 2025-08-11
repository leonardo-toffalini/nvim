require "nvchad.options"

local o = vim.o
-- o.cursorlineopt = "both" -- to enable cursorline!
o.relativenumber = true
o.swapfile = false
o.scrolloff = 5

vim.api.nvim_create_autocmd("BufDelete", {
  callback = function()
    local bufs = vim.t.bufs
    if #bufs == 1 and vim.api.nvim_buf_get_name(bufs[1]) == "" then
      vim.cmd "Nvdash"
    end
  end,
})
