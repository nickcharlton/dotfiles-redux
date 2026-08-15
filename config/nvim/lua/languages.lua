-- language servers
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
require("nvim-treesitter.install").prefer_git = true
require("nvim-treesitter.configs").setup({
  ensure_installed = "all",
  ignore_install = { "ipkg" },
  highlight = { enable = true }
})
