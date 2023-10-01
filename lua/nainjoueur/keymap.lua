vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- open file manager
vim.keymap.set("n", "<leader>pv", vim.cmd.xplr)

-- swapline
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = 'move line down' })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = 'move line up' })
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = 'move line down' })
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = 'move line up' })

-- move lines
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = 'in x mode [["_dP]]' })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = 'Sync yank to clipboard' })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = 'Sync yank to clipboard' })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = 'Delete whithout put in clip' })

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>l")
vim.keymap.set("i", "kj", "<Esc>")
vim.keymap.set("i", "JK", "<Esc>l")
vim.keymap.set("i", "KJ", "<Esc>")
vim.keymap.set("i", "jK", "<Esc>")
vim.keymap.set("i", "kJ", "<Esc>")
vim.keymap.set("i", "Jk", "<Esc>")
vim.keymap.set("i", "Kj", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = 'Format' })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = '<cmd>lnext<CR>zz' })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = '<cmd>lprev<CR>zz' })

vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'rename all word' })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = 'chmod +x' })

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

-- fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git);

-- undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
