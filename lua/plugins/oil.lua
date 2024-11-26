return {
    {
        "stevearc/oil.nvim",
        lazy = false,
        opts = {
            columns = {
                "icons",
            },
            skip_confirm_for_simple_edits = true,
            prompt_save_on_select_new_entry = false,
            default_file_explorer = true,
            view_options = {
                show_hidden = true,
            },
            keymaps = {
                ["<leader>s"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
                ["<leader>h"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" },
                ["<leader>t"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in a second tab" },
            }
        },
        dependencies = {
            "echasnovski/mini.icons",
        },
        config = function(_, opts)
            require("oil").setup(opts)
        end,
    },
}
