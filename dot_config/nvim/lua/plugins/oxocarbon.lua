return {
  "nyoom-engineering/oxocarbon.nvim",
  config = function()
    vim.opt.background = "dark"
    vim.cmd.colorscheme "oxocarbon"
  end,
  priority = 1000,
  lazy = false
}
