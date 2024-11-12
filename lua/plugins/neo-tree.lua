return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.keymap.set("n", "<leader>pf", ":Neotree filesystem reveal right<CR>", { desc = '[P]roject [F]ilesystem' })
        -- vim.keymap.set("n", "<leader>pf", function()
        --     vim.cmd('cd %:p:h')
        --     vim.cmd('NvimTreeFocus')
        -- end, { desc = '[P]roject [F]ilesystem' })

        vim.api.nvim_create_autocmd("BufEnter", {
            pattern = "*",
            callback = function()
                local buftype = vim.api.nvim_buf_get_option(0, "buftype")
                if buftype == "" and #vim.api.nvim_list_wins() > 1 then
                    vim.cmd("Neotree close")
                end
            end,
        })
    end,
}
