return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    local sources = {}
    sources[#sources + 1] = formatting.black

    if vim.fn.executable("djlint") == 1 then
      sources[#sources + 1] = formatting.djlint.with({
        command = "djlint",
        args = { "--reformat", "-" },
      })
    end

    sources[#sources + 1] = formatting.prettier
    sources[#sources + 1] = formatting.stylua
    sources[#sources + 1] = formatting.isort
    sources[#sources + 1] = diagnostics.flake8


    null_ls.setup({
      sources = sources,
    })
  end,
}
