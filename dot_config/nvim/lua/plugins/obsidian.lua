return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>os", "<cmd>ObsidianSearch<CR>", desc = "Obsidian search" },
    { "<leader>on", "<cmd>ObsidianNew<CR>", desc = "Obsidian new" },
    { "<leader>ot", "<cmd>ObsidianToday<CR>", desc = "Obsidian today" },
    { "<leader>ol", "<cmd>ObsidianLink<CR>", desc = "Obsidian link" },
  },
  opts = {
    workspaces = {
      {
        name = "brain2",
        path = "~/brain2",
      },
    },
    templates = {
      subdir = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },
    daily_notes = {
      folder = "daily",
      date_format = "%Y-%m-%d",
      alias_format = "%B %-d, %Y",
      template = 'daily.md'
    },
  },
}
