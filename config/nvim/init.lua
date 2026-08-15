-- general settings
vim.opt.autowrite = true
vim.opt.colorcolumn = "80,120"
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.listchars = {tab = "→ ", trail = "·"}
vim.opt.list = true
vim.opt.number = true
vim.opt.shiftround = true
vim.opt.shiftwidth = 2
vim.opt.signcolumn = "yes"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 2
vim.opt.undofile = true
vim.opt.showmode = false

require("plugins")
require("languages")
require("keymaps")

-- color scheme
vim.cmd.colorscheme("ansi")
