return {
  -- Auto-close brackets, quotes, and parentheses
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({
        check_ts = true, -- Enable treesitter integration
        fast_wrap = {},
      })
    end,
  },

  -- Auto-close and rename HTML/XML tags
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}

