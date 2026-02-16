local M = {}

--- Returns trimmed line
---
--- @param line string Line to trim
--- @return string # Trimmed line
M.trim_line = function(line)
  local new_line = ''

  for char_num = 1, #line do
    local reverse_char_num = #line - char_num + 1
    local char = string.sub(line, reverse_char_num, reverse_char_num)

    if (char ~= ' ') and (char ~= '\t') then
      new_line = string.sub(line, 0, reverse_char_num)
      break
    end
  end

  return new_line
end

--- Trims a list of strings
---
--- @param lines string[] List of lines to trim
--- @return string[] # List of trimmed lines
M.trim_lines = function(lines)
  local trimmed_lines = {}

  -- Iterate over all lines int the current buffer
  for _, line in ipairs(lines) do
    table.insert(trimmed_lines, M.trim_line(line))
  end

  vim.print(trimmed_lines)
  return trimmed_lines
end

--- Trims the lines in a buffer
---
--- @param buffer integer Buffer id, or 0 for current buffer
M.trim_lines_in_buffer = function(buffer)
  -- Read buffer lines
  local lines = vim.api.nvim_buf_get_lines(buffer, 0, -1, false)

  local trimmed_lines = M.trim_lines(lines)

  -- Set new lines in buffer
  vim.api.nvim_buf_set_lines(buffer, 0, #lines, true, trimmed_lines)
end

-- Creates user command
vim.api.nvim_create_user_command('TrimLines', function()
  M.trim_lines_in_buffer(0)
end, {})

-- Creates autocmd to trim lines on save
vim.api.nvim_create_autocmd('BufWritePre', {
  callback = function()
    M.trim_lines_in_buffer(0)
  end,
})

return M
