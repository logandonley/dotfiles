return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<C-l>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        yaml = true,
      },
    },
  },
}
