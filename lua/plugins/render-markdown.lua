return {
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = {
        },
        keys = {
            { "<leader>mdr", ":RenderMarkdown toggle<CR>", desc = "Render Markdown" },
        },
        opts = {
            file_types = { 'markdown' },
            render_modes = true,
            quote = {
                enabled = true,
                render_modes = false,
                icon = '▋',
                repeat_linebreak = false,
                highlight = 'RenderMarkdownQuote',
            },
            dash = {
                enabled = true,
                render_modes = false,
                icon = '─',
                width = 'full',
                left_margin = 0,
                highlight = 'RenderMarkdownDash',
            },
        }
    }
}
