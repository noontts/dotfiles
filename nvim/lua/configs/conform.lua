local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    kotlin = { "ktlint" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },
}

require("conform").setup(options)
