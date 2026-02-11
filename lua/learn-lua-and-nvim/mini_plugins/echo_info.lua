local M = {}

M.echo_info = function()
  local filetype = vim.bo.buftype
  local mode = vim.fn.mode()

  vim.print(string.format('Filetype = (%s) || Mode = (%s)', filetype, mode))
end

vim.api.nvim_create_user_command('EchoInfo', M.echo_info, {})

return M
