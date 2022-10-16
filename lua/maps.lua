local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '


-- Clear search highlights
map('n', '<leader>rh', ':nohl<CR>')


-- Copying and pasting
map('n', '<leader>p', '"+p')
map('n', '<leader>P', '"+P')
map('n', '<leader>y', '"+y')
map('n', '<leader>Y', '"+Y')
map('n', '<leader>d', '"+d')
map('n', '<leader>D', '"+D')
map('v', '<leader>y', '"+y')
map('v', '<leader>Y', '"+Y')

-- File navigation
map('n', '<leader>nt', '<cmd>NvimTreeToggle<cr>')
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fb', '<cmd>Telescope file_browser<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')

-- Buffer management
map('n', '<leader>th',  '<cmd>BufferLineCyclePrev<CR>' )
map('n', '<leader>tl',  '<cmd>BufferLineCycleNext<CR>' )
map('n', '<leader>tch', '<cmd>BufferLineCloseLeft<CR>' )
map('n', '<leader>tcl', '<cmd>BufferLineCloseRight<CR>')
map('n', '<leader>bd',  '<cmd>bd<CR>')

-- Treesitter
map('n', '<leader>tpt', '<cmd>TSPlaygroundToggle<cr>')
map('n', '<leader>tcc', '<cmd>TSHighlightCapturesUnderCursor<cr>')

-- LSP
map('n', 'gd', '<cmd>Telescope lsp_definitions<cr>')
map('n', 'gr', '<cmd>Telescope lsp_references<cr>')
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')

-- GIT (Telescope)
map('n', '<leader>gs', '<cmd>Telescope git_status<cr>')
map('n', '<leader>gb', '<cmd>Telescope git_branches<cr>')
map('n', '<leader>gf', '<cmd>Telescope git_files<cr>')
map('n', '<leader>gc', '<cmd>Telescope git_commits<cr>')

-- Trouble
map('n', '<leader>xx', '<cmd>TroubleToggle<cr>')
map('n', '<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<cr>')
map('n', '<leader>xd', '<cmd>TroubleToggle document_diagnostics<cr>')
map('n', '<leader>xl', '<cmd>TroubleToggle loclist<cr>')
map('n', '<leader>xq', '<cmd>TroubleToggle quickfix<cr>')



