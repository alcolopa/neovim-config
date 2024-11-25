return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons'
        },
        keys = {
            { "<leader>ff", ":Telescope find_files<CR>", desc = "Find files in telescope" },
            { "<leader>fg", ":Telescope live_grep<CR>",  desc = "Telescipoe live grep" },
            { "<leader>fb", ":Telescope buffers<CR>",    desc = "Telescope buffers" },
            { "<leader>fh", ":Telescope help_tags<CR>",  desc = "Telescope help tags" },
        },
    }
}
