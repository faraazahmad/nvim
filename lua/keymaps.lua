-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<leader><leader>", ":Telescope <CR>")
map("n", "<leader>f", ":Telescope find_files<CR>")
map("n", "<leader>g", ":LazyGit<CR>")
