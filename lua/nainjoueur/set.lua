vim.opt.guicursor = ""

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Make line numbers default
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Enable break indent
vim.opt.breakindent = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Set highlight on search
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.o.completeopt = 'menuone'

vim.opt.colorcolumn = "80"

vim.opt.cul = true

vim.opt.encoding = "UTF-8"

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.wildignore = "__pycache__"
vim.opt.wildignore:append { "*.o", "*~", "*.pyc", "*pycache*" }
vim.opt.wildignore:append "Cargo.lock"
