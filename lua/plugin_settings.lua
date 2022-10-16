require('gruvbox').setup({
    contrast = "medium"
})

vim.cmd[[colorscheme gruvbox]]

require('nvim-autopairs').setup{}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local lspconfig = require('lspconfig')

local servers = { 'ccls', 'pyright', 'gopls', 'sumneko_lua' }
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        }
    }
end


-- completion popups
local luasnip = require 'luasnip'
local cmp = require 'cmp'

cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }
    }),

    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
    }
}


-- TODO: commenting
require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "python", "go", "lua", "vim", "norg", "dockerfile", "bash" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        -- additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = false,
    },
    playground = {
        enable = true,
        updatetime = 25,
        persist_queries = false,
    },
}


require("telescope").setup {
    extensions = {
        file_browser = {
            theme = "ivy",
        }
    }
}

require("telescope").load_extension "file_browser"

require("nvim-tree").setup{}

require("lualine").setup()
require("indent_blankline").setup {
    show_current_context = false,
    show_current_context_start = false,
}
require("bufferline").setup{}

require("Comment").setup{}

require('neorg').setup{
    load = {
        ["core.defaults"] = {},
    },
}

require('trouble').setup{}
