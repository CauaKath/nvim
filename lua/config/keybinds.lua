vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

vim.keymap.set('n', '<Tab>', ':tabnext<Enter>', { desc = 'Move to the next tab' })
vim.keymap.set('n', '<S-Tab>', ':tabp<Enter>', { desc = 'Move to the previous tab' })
vim.keymap.set('n', '<leader><Tab>', ':tabnew<Enter>:Ex<Enter>', { desc = 'Open explorer' })

-- Git (diffview.nvim)
vim.keymap.set('n', '<leader>gd', '<cmd>DiffviewOpen<cr>',         { desc = 'Git: diff local changes' })
vim.keymap.set('n', '<leader>gh', '<cmd>DiffviewFileHistory %<cr>', { desc = 'Git: file history (current file)' })
vim.keymap.set('n', '<leader>gH', '<cmd>DiffviewFileHistory<cr>',  { desc = 'Git: file history (repo)' })
vim.keymap.set('n', '<leader>gc', '<cmd>DiffviewClose<cr>',        { desc = 'Git: close diffview' })
vim.keymap.set('n', '<leader>gb', function()
  local branch = vim.fn.input('Compare against branch/commit: ')
  if branch ~= '' then
    vim.cmd('DiffviewOpen ' .. branch)
  end
end, { desc = 'Git: diff against branch' })
