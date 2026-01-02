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
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 2
vim.opt.undofile = true

-- keymaps
local insert = "i"
local normal = "n"
local visual = "v"

vim.g.mapleader = " "

vim.keymap.set(normal, "j", "gj", {
  desc = "Go down by screen line",
  noremap = true,
})

vim.keymap.set(normal, "k", "gk", {
  desc = "Go up by screen line",
  noremap = true,
})

vim.keymap.set(normal, "<C-H>", "<C-W>h", {
  desc = "Ctrl-h to go left to the next split",
  noremap = true,
})

vim.keymap.set(normal, "<C-J>", "<C-W>j>", {
  desc = "Ctrl-j to go down to the next split",
  noremap = true,
})

vim.keymap.set(normal, "<C-K>", "<C-W>k", {
  desc = "Ctrl-k to go up to the next split",
  noremap = true,
})

vim.keymap.set(normal, "<C-L>", "<C-W>l", {
  desc = "Ctrl-l to go right to the next split",
  noremap = true,
})

vim.keymap.set(normal, "vv", "<C-W>v", {
  desc = "Open a new vertical split with vv",
  noremap = true,
})

vim.keymap.set(normal, "<Leader><Leader>", "<C-^>", {
  desc = "Jump to alternate file",
  noremap = true,
})
