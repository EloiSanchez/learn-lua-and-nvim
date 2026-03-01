local M = {}

--- Send notification with current file name
M.send_file_notification = function()
  vim.notify(string.format('Currently editing:\n%s', vim.fs.basename(vim.api.nvim_buf_get_name(0))))
end

-- Create autcomd
vim.api.nvim_create_autocmd('BufEnter', {
  callback = M.send_file_notification,
})

-- Create keymap
vim.api.nvim_set_keymap(
  'n',
  '<leader>be',
  '',

  { desc = 'Sends notification with name of current buffer', callback = M.send_file_notification }
)

return M
