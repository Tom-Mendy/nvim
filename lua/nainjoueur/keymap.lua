vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

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
vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format, { desc = '[B]uffer [F]ormat' })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = '<cmd>lnext<CR>zz' })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = '<cmd>lprev<CR>zz' })

vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '[R]ename [W]ords' })
vim.keymap.set("n", "<leader>bx", "<cmd>!chmod +x %<CR>", { silent = true, desc = '[B]ufffer +[x]' })

vim.keymap.set("n", "<leader>bs", function()
  vim.cmd("so")
end)

-- git status
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = '[G]it [S]tatus' })

-- undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = '[U]ndotree [T]oggle' })

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

-- open file manager
vim.keymap.set("n", "<leader>pv", function()
  vim.cmd('cd %:p:h')
  vim.cmd('Explore')
end)

vim.keymap.set("n", "<leader>pf", "<cmd>Neotree filesystem<CR>", { desc = '[P]roject [F]filesystem' })
vim.keymap.set("n", "<leader>pb", "<cmd>Neotree buffers<CR>", { desc = '[P]roject [B]uffers' })
vim.keymap.set("n", "<leader>pg", "<cmd>Neotree git_status<CR>", { desc = '[P]roject [G]it' })
vim.keymap.set("n", "<leader>pl", "<cmd>Neotree last<CR>", { desc = '[P]roject [L]ast' })

-- https://neovim.io/doc/user/nvim_terminal_emulator.html
-- vim.tnoremap.set("<Esc>", '<C-\\><C-n>')
-- autocmd VimEnter * ++nested split term://sh
vim.keymap.set("n", "<leader>tt", "<cmd>vsplit term://zsh<CR>", { desc = '[T]oggle [T]erm' })