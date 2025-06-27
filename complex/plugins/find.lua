-- [[ TELESCOPE ]] --

return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
        config = function()
            require'telescope'.setup{}

            local option = {noremap = true, silent = true }

            local keys = require("custom_keys")
            local builtin = require('telescope.builtin')

            vim.keymap.set('n', keys.find_files, builtin.find_files, option)
            vim.keymap.set('n', keys.live_grep, builtin.live_grep, option)
            vim.keymap.set('n', keys.search_cursor, builtin.grep_string, option)
            vim.keymap.set('n', keys.find_buffer, builtin.buffers, option)
            vim.keymap.set('n', '<leader>fl', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })

            vim.keymap.set('n', '<leader>fj', function()
                builtin.live_grep({
                    prompt_title = "Search All Files",
                    additional_args = {"--hidden", "--no-ignore",  "follow"}
                })
            end, { desc = 'Search string in all files' })

            vim.keymap.set('n', '<leader>fa', function()
              -- You can pass additional configuration to telescope to change theme, layout, etc.
              builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                winblend = 10,
                previewer = false,
              })
            end)

            vim.keymap.set('n', '<C-g>', builtin.git_files, option)
        end,
    },
}
