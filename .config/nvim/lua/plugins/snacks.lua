return {
  "folke/snacks.nvim",
  opts = {
    picker = {}
  },
  keys = {
    { "<leader>ff", function() Snacks.picker.files() end },
    { "<leader>fb", function() Snacks.picker.buffers({ focus = "list" }) end },
    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end }
  }
}
