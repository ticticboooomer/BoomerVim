require("mason-lspconfig").setup {
    ensure_installed = { "sumneko_lua", "rust_analyzer", "clangd", "cssls", "omnisharp", "tsserver", "jdtls", "jsonls" },
    automatic_installation = true,
}

require('mason-lspconfig').setup_handlers {
  function (server_name)
    require("lspconfig")[server_name].setup {}
  end
}
