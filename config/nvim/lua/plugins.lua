require("mini.deps").setup()
local add = require("mini.deps").add

add("mason-org/mason.nvim")
require("mason").setup()

add("neovim/nvim-lspconfig")

add({
  source = "nvim-treesitter/nvim-treesitter",
  checkout = "master"
})

add({
  source = "nvim-telescope/telescope.nvim",
  depends = { "nvim-lua/plenary.nvim" }
})

add("nvim-lualine/lualine.nvim")
require("lualine").setup({
  options = {
    theme = "jellybeans",
  },
  sections = {
    lualine_c = {'filename', 'lsp_status'}
  }
})

add("lewis6991/gitsigns.nvim")
require('gitsigns').setup()

add("nxhung2304/lastplace.nvim")
require("lastplace").setup()
