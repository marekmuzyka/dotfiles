return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require"nvim-treesitter.configs".setup({
      ensure_installed = { "cpp", "ocaml" },
      highlight = {
        enable = true,
      }
    })
  end
}
