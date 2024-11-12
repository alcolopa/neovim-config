return {
  {
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        sort_by = "case_sensitive",
        view = {
          width = 30,
          side = "right",
        },
        renderer = {
          group_empty = true,
          icons = {
            show = {
              folder_arrow = true,
              git = true,
            },
          },
        },
        filters = {
          dotfiles = false,
        },
      })
    end,
      keys = {
      { "<leader>t", ":NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
    },
  },
}

