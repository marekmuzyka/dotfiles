vim.g.mapleader = " "

local opt = vim.opt

opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 0

opt.nu = true
opt.rnu = true
opt.signcolumn = "yes"

opt.splitright = true
opt.splitbelow = true

opt.showmode = false

opt.winborder = "rounded"

-- netrw config
vim.g.netrw_banner = 0

vim.diagnostic.config({ virtual_text = true })
