return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    local formatting = null_ls.builtins.formatting

    local sources = {}
    sources[#sources + 1] = formatting.black

    if vim.fn.executable("djlint") == 1 then
      sources[#sources + 1] = formatting.djlint.with({
        command = "djlint",
        args = { "--reformat", "-" },
      })
    end

    sources[#sources + 1] = formatting.prettier

    null_ls.setup({
      sources = sources,
    })
  end,
}
