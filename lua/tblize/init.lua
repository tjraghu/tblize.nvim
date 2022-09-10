local M = {}

M.FmtTbl = function()
  local bufnr = vim.api.nvim_get_current_buf()
  print(bufnr)
  print(vim.api.nvim_buf_get_name(bufnr)) 
  local start = 1
  local endi = 3

  local lines = vim.api.nvim_buf_get_lines(bufnr,start,endi,1)
  for i,line in ipairs(lines) do
    print(line)
  end

  local curline = vim.api.nvim_get_current_line()
  print(curline)

  local winh = vim.api.nvim_get_current_win()

  local pos = vim.api.nvim_win_get_cursor(winh)
  print(pos)

  for i,p in ipairs(pos) do
    print(p)
  end
end

return M
