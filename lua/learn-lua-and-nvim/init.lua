local M = {}

-- 1. Creates autocmd that prints "Hello from Lua"
local hello_lua = require('learn-lua-and-nvim.mini_plugins.hello_lua')

M.hello_lua = hello_lua.hello_lua

return M
