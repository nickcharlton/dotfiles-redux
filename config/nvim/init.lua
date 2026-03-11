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

-- plugins
require("mini.deps").setup()
local add = require("mini.deps").add

-- mason
add("mason-org/mason.nvim")
require("mason").setup()

-- language servers
add("neovim/nvim-lspconfig")
vim.lsp.enable({ "lua_ls" })
vim.diagnostic.config({
  virtual_text = { current_line = true },
  severity_sort = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '✘',
      [vim.diagnostic.severity.WARN] = '▲',
      [vim.diagnostic.severity.HINT] = '⚑',
      [vim.diagnostic.severity.INFO] = '»',
    }
  }
})

-- nvim-treesitter
add({
  source = "nvim-treesitter/nvim-treesitter",
  checkout = "master"
})
require("nvim-treesitter.install").prefer_git = true
require("nvim-treesitter.configs").setup({
  ensure_installed = "all",
  ignore_install = { "ipkg" },
  highlight = { enable = true }
})

add({
  source = "nvim-telescope/telescope.nvim",
  depends = { "nvim-lua/plenary.nvim" }
})

add({
  source = "lewis6991/gitsigns.nvim"
})

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

vim.keymap.set(normal, "<leader>d", vim.diagnostic.open_float, {
  desc = "Show line diagnostic panel with <leader>d",
  noremap = true
})

vim.keymap.set(normal, "<leader>l", vim.diagnostic.setloclist, {
  desc = "Show list of diagnostics with <leader>l",
  noremap = true
})

local telescope = require('telescope.builtin')
vim.keymap.set(normal, "<leader>ff", telescope.find_files, {
  desc = "Telescope find files"
})
vim.keymap.set(normal, "<leader>fg", telescope.live_grep, {
  desc = "Telescope live grep"
})

local gitsigns = require('gitsigns')
gitsigns.setup({
})

-- color scheme
vim.cmd.colorscheme("ansi")
