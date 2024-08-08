return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    -- replaces LazyVim's default lualine_z
    -- see https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/ui.lua
    opts.sections.lualine_z = {
      function()
        return os.getenv("USER")
      end,
    }
  end,
}
