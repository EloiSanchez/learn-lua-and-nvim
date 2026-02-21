local M = {}

--- Toggle relative numbers in current buffer only
M.toggle_rnu = function()
  -- Use vim.o (:h lua-options)
  vim.o.relativenumber = not vim.o.relativenumber
end

-- Create user command
vim.api.nvim_create_user_command('ToggleRNU', M.toggle_rnu, {})

return M
