-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Search bindings
map("n", "<Esc>", ":noh<CR>")
-- Telescope bindings
map("n", "<leader><leader>", ":Telescope <CR>")

-- file management
map("n", "<leader>bf", ":Telescope find_files<CR>")
map("n", "<leader>bt", ":NERDTreeToggle<CR>")

map("n", "<leader>p", ":Telescope commands<CR>")
map("n", "<leader>f", ":Telescope live_grep<CR>")
map("n", "<leader>h", ":Telescope help_tags<CR>")

map("n", "<leader>g", ":LazyGit<CR>")

map("n", "<leader>k", ":call CocActionAsync('jumpDefinition')<CR>")
