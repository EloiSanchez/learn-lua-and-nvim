local M = {}

-- The iterated function provides ALL available buffers. It is then
-- on us to decide whether to count them as a buffer of interest
-- for the user or not.
--
-- See :h :buffers[!] and the possible options for each buffer
-- For example:
-- - buflisted determines if the buffer is listed or not
--   in the defauld :buffer command.
-- - An "active" buffer indicates whether the buffer is shown in the
--   current window or not
-- - ...
M.buffer_count = function()
  local count = 0
  for _, value in pairs(vim.api.nvim_list_bufs()) do
    -- Count the buffer if it is a listed buffer :h unlisted-buffer
    if vim.bo[value].buflisted then
      count = count + 1
    end
  end
  vim.notify(string.format('Buffer count: %s', count))
end

vim.api.nvim_create_user_command('BufferCount', M.buffer_count, {})

return M
