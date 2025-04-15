return {
  {
    "saghen/blink.cmp",
    version = "*",
    opts = {
      keymap = { preset = "default" },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono'
      },
      completion = {
        accept = { auto_brackets = { enabled = false } },
        menu = { border = "none" }
      },
      cmdline = {
        enabled = false
      }
    }
  }
}
