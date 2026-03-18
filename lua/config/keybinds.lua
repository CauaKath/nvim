vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

vim.keymap.set('n', '<Tab>', ':tabnext<Enter>', { desc = 'Move to the next tab' })
vim.keymap.set('n', '<S-Tab>', ':tabp<Enter>', { desc = 'Move to the previous tab' })
vim.keymap.set('n', '<leader><Tab>', ':tabnew<Enter>:Ex<Enter>', { desc = 'Open explorer' })
