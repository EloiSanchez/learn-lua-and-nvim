# Learning lua and Neovim

This project contains a few modules following the course [nvim-plugin-challenges](https://github.com/Uanela/nvim-plugin-challenges).

The projet structure is taken from the [nvim-plugin-template](https://github.com/nvimdev/nvim-plugin-template).

## Completed so far

### 1. `:HelloLua`

Creates a `:HelloLua` user command that print "Hello from Lua".

See [hello_lua.lua](https://github.com/EloiSanchez/learn-lua-and-nvim/blob/main/lua/learn-lua-and-nvim/mini_plugins/hello_lua.lua)

### 2. `:EchoInfo`

Creates a `:EchoInfo` user command that displays the filetype of the current buffer and the current mode.

See [echo_info.lua](https://github.com/EloiSanchez/learn-lua-and-nvim/blob/main/lua/learn-lua-and-nvim/mini_plugins/echo_info.lua)

### 3. `:BufferCount`

Creates a `:BufferCount` user command that displays the current buffer count. The data is obtained from `vim.api.nvim_list_bufs()`, which displays information about _all_ buffers. That includes, hidden, unlisted, non-writeable...

Then, it is a developer's task to filter out which buffers are going to be counted or not. I have decided to count the buffers that would appear in as output of `:buffers`, therefore, those that are _listed_ (see `:h unlisted-buffer`). Whether the buffer is listed or not is extracted from `vim.bo[value].buflisted`.

See [buffer_count.lua](https://github.com/EloiSanchez/learn-lua-and-nvim/blob/main/lua/learn-lua-and-nvim/mini_plugins/buffer_count.lua)

### 4. Autocmd to trim whitespaces

Createas an autocmd (see `:h autocmd`) that trims whitespaces of all the lines in the buffer when saving. Also creates a user command (`:TrimLines`) that does the same.

See [trim_on_save.lua](https://github.com/EloiSanchez/learn-lua-and-nvim/blob/main/lua/learn-lua-and-nvim/mini_plugins/trim_on_save.lua)

### 5. `:ToggleRNU`

Creates user command `:ToggleRNU` that toggles relative number in current buffer. Interesting to see the differences between `vim.o`, `vim.bo`, `vim.opt`... (See `:h lua-options`)

See [toggle_rnu.lua](https://github.com/EloiSanchez/learn-lua-and-nvim/blob/main/lua/learn-lua-and-nvim/mini_plugins/toggle_rnu.lua)

### 6. Notify entered buffer filename

Create autocmd that sends notification when entering a buffer (see `:h BufEnter`).

See [file_notifier](https://github.com/EloiSanchez/learn-lua-and-nvim/blob/main/lua/learn-lua-and-nvim/mini_plugins/file_notifier.lua)

### 7. Create keymaps

Create keymap for function created in section 6.

See [file_notifier](https://github.com/EloiSanchez/learn-lua-and-nvim/blob/main/lua/learn-lua-and-nvim/mini_plugins/file_notifier.lua)
