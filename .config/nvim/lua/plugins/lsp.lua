return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {},
      ocamllsp = { single_file_support = true }
    }
  },
  config = function(_, opts)
    local lspconfig = require("lspconfig")
    local handlers = {
      ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {border = "rounded"}),
      ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {border = "rounded"})
    }
    local on_attach = function(client, bufnr)
      local opts = { buffer = bufnr }
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, opts)
    end
    for server, config in pairs(opts.servers) do
      config.handlers = handlers
      config.on_attach = on_attach
      config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
      lspconfig[server].setup(config)
    end
  end
}
