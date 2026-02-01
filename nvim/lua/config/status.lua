-- Statusline
vim.opt.laststatus = 2
vim.opt.statusline = table.concat({
  "  %f",
  " %m%r",
  "%=",
  " row:%l col:%c",
  " | dec:%b hex:0x%B ascii:%{v:lua.GetAscii()}",
  " | %p%%",
  " [%{&filetype}]"
})

-- ASCII under cursor
function _G.GetAscii()
  local line = vim.fn.getline(".")
  local col = vim.fn.col(".") - 1
  if col >= #line then return "" end
  return string.sub(line, col + 1, col + 1)
end
