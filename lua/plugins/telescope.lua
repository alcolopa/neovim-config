return {
    {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
           { "<leader>ff", ":Telescope find_files<CR>", desc = "Find files in telescope" },
           { "<leader>fg", ":Telescope live_grep<CR>", desc = "Find files in telescope" },
           { "<leader>fb", ":Telescope buffers<CR>", desc = "Find files in telescope" },
           { "<leader>fh", ":Telescope help_tags<CR>", desc = "Find files in telescope" },
        },
    }
}
