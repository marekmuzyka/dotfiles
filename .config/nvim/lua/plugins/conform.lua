return {
  "stevearc/conform.nvim",
  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({ async = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  opts = {
    formatters_by_ft = {
      cpp = { "clang-format" },
      ocaml = { "ocamlformat" },
      python = { "black" }
    },
  }
}
