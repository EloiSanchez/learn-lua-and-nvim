-- First easy plugin
local M = {}

-- Prints "Hello from Lua"!
-- @return None
M.hello_lua = function()
  vim.print('Hello from Lua')
end

-- Creates autocmd
vim.api.nvim_create_user_command('HelloLua', M.hello_lua, {})

return M
