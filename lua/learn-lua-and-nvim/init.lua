local M = {}

-- 1. Creates autocmd that prints "Hello from Lua"
require('learn-lua-and-nvim.mini_plugins.hello_lua')

-- 2. Echo information about the current filetype and mode with :EchoInfo
require('learn-lua-and-nvim.mini_plugins.echo_info')

-- 3. Display number of current open buffers
require('learn-lua-and-nvim.mini_plugins.buffer_count')

return M
