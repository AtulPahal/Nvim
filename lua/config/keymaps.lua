-- Custom Keymaps

-- Quit all windows safely
vim.keymap.set("n", "<leader>qa", ":qa<CR>", { desc = "Quit all (ask to save)" })

-- Quit all windows forcefully
vim.keymap.set("n", "<leader>qq", ":qa!<CR>", { desc = "Force quit all" })

