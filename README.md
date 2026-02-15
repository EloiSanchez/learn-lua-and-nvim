# Learning lua and Neovim

This project contains a few modules following the course [nvim-plugin-challenges](https://github.com/Uanela/nvim-plugin-challenges).

The projet structure is taken from the [nvim-plugin-template](https://github.com/nvimdev/nvim-plugin-template).

## Completed so far

### 1. `:HelloLua`

Creates a `:HelloLua` user command that print "Hello from Lua".

### 2. `:EchoInfo`

Creates a `:EchoInfo` user command that displays the filetype of the current buffer and the current mode.

### 3. `:BufferCount`

Creates a `:BufferCount` user command that displays the current buffer count. The data is obtained from `vim.api.nvim_list_bufs()`, which displays information about _all_ buffers. That includes, hidden, unlisted, non-writeable...

Then, it is a developer's task to filter out which buffers are going to be counted or not. I have decided to count the buffers that would appear in as output of `:buffers`, therefore, those that are _listed_ (see `:h unlisted-buffer`). Whether the buffer is listed or not is extracted from `vim.bo[value].buflisted`.
