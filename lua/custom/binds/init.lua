-- vim.keymap.set('n', '<leader>pv', ':Ex<CR>', { noremap = true, silent = true, desc = 'Explore project files' })

vim.keymap.set('n', '<leader>pv', function()
  vim.cmd 'Ex'
end, { desc = 'Open netrw file explorer' })

-- Disable Alt (Meta) keybindings to save for i3
for c = string.byte 'a', string.byte 'z' do
  local key = '<M-' .. string.char(c) .. '>'
  vim.keymap.set('n', key, '<Nop>', { noremap = true })
  vim.keymap.set('i', key, '<Nop>', { noremap = true })
  vim.keymap.set('v', key, '<Nop>', { noremap = true })
end
