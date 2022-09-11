local M = {}

local buffer = vim.api.nvim_get_current_buf
local name = vim.api.nvim_buf_get_name
local lines = vim.api.nvim_buf_get_lines
local line = vim.api.nvim_get_current_line
local window = vim.api.nvim_get_current_win
local position = vim.api.nvim_win_get_cursor
local count = vim.api.nvim_buf_line_count

local Tbl = { separator = "|" , header = "-" }

M.FmtTbl = function()
  local bufnr = buffer() 
  local bufname = name(bufnr) 
  local cnt = count(bufnr)
  local start = 1
  local endi = 3


--  local list = lines(bufnr,start,endi,1)
--  for i,line in ipairs(list) do
--    print(line)
--  end
--
  local curline = line()

  local found = string.find(curline,Tbl.separator)
  print(found)
  local winnr = window()
  local row,col = unpack(position(winnr))

end

return M
