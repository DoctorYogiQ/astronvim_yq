return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "nvim-telescope/telescope-bibtex.nvim",
    ft = "markdown",
    config = function ()
    require"telescope".load_extension("bibtex")
  end,
  },

{
  "mickael-menu/zk-nvim",
  config = function()
    require("zk").setup({
        picker = "select",
        lsp = {
          config = {
            cmd = { "zk", "lsp" },
            name = "zk",
          },

          auto_attach = {
            enabled = true,
            filetypes = { "markdown" },
          },
        },
    })
  end
},
}
