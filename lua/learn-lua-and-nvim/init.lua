local M = {}

-- 1. Creates autocmd that prints "Hello from Lua"
local hello_lua = require('learn-lua-and-nvim.mini_plugins.hello_lua')

M.hello_lua = hello_lua.hello_lua

-- 2. Echo information about the current fileatype and mode with :EchoInfo
require('learn-lua-and-nvim.mini_plugins.echo_info')

return M
