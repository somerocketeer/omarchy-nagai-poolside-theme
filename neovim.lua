-- LazyVim plugin spec: load the Nagai Poolside colorscheme plugin
-- Place this file under LazyVim's plugin specs (Omarchy will copy/link when applying the theme)
return {
  {
    "somerocketeer/nagai-poolside.nvim",
    name = "nagai-poolside-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nagai_poolside").setup({ transparent = false })
      vim.cmd.colorscheme("nagai-poolside")
    end,
  },
}
