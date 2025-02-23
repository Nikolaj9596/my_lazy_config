local M = {}

M.k9s_toggle = function()
  local Terminal = require("toggleterm.terminal").Terminal
  local k9s = Terminal:new({
    cmd = "k9s",
    hidden = true,
    direction = "float",
    on_open = function(_)
      vim.cmd("startinsert!")
    end,
    on_close = function(_) end,
    count = 99,
  })
  k9s:toggle()
end

M.lazydocker_toggle = function()
  local Terminal = require("toggleterm.terminal").Terminal
  local lazydocker = Terminal:new({
    cmd = "lazydocker",
    hidden = true,
    direction = "float",
    on_open = function(_)
      vim.cmd("startinsert!")
    end,
    on_close = function(_) end,
    count = 99,
  })
  lazydocker:toggle()
end

return M
