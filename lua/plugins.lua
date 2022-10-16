-- Protected call
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
    return
end

-- Install Plugins
return packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'

--  Themes
    use 'Mofiqul/dracula.nvim'
    use 'ellisonleao/gruvbox.nvim'

--  Optional telescope dependencies
    use 'BurntSushi/ripgrep'
    use 'sharkdp/fd'

--  File navigation
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'nvim-telescope/telescope-fzf-native.nvim'

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        tag = 'nightly',
    }

--  Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'nvim-treesitter/playground'

--  LSP
    use 'neovim/nvim-lspconfig'
    use {
        'folke/trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

--  Autocompletion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'

--  UI Improvements
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    use 'lukas-reineke/indent-blankline.nvim'

--  Org mode
    use 'nvim-neorg/neorg'

--  Nice-to-have's
    use 'windwp/nvim-autopairs'
    use 'numToStr/Comment.nvim'
end)
