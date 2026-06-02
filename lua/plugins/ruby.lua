return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          mason = false,
          cmd = { vim.fn.expand("~/.rbenv/shims/ruby-lsp") },
          -- ruby-lsp adds itself to its composed bundle under `group: :development`.
          -- If a project declares `group(:development, optional: true)`, that group
          -- is excluded by default and `bundle exec ruby-lsp` can't find ruby-lsp. With this
          -- I can merge the development group onto the inherited env manually.
          cmd_env = { BUNDLE_WITH = "development" },
        },
      },
    },
  },
}
