return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require "harpoon"
        harpoon:setup {}

        vim.keymap.set("n", "<leader>a", function()
            harpoon:list():add()
        end, { desc = "[a]ppend harpoon buffer" })
        vim.keymap.set("n", "<leader>\\a", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { desc = "[a]ll harpoon buffers" })
        vim.keymap.set("n", "<leader>\\q", function()
            harpoon:list():select(1)
        end, { desc = "[q] harpoon bay 1" })
        vim.keymap.set("n", "<leader>\\w", function()
            harpoon:list():select(2)
        end, { desc = "[w] harpoon bay 2" })
        vim.keymap.set("n", "<leader>\\e", function()
            harpoon:list():select(3)
        end, { desc = "[e] harpoon bay 3" })
        vim.keymap.set("n", "<leader>\\r", function()
            harpoon:list():select(4)
        end, { desc = "[r] harpoon bay 4" })
        vim.keymap.set("n", "<leader>\\s", function()
            harpoon:list():prev()
        end, { desc = "[s] previous harpoon bay" })
        vim.keymap.set("n", "<leader>\\d", function()
            harpoon:list():next()
        end, { desc = "[d] next harpoon bay" })
    end,
}
