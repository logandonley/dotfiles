return {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    vim.cmd.colorscheme "catppuccin"
  end,
  priority = 1000,
  lazy = false
}
