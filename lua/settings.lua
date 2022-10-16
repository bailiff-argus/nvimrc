local g = vim.g     -- global options
local opt = vim.opt   -- window-local options


-- general
-- opt.mouse = 'a'
opt.swapfile = false
opt.backup = false
opt.completeopt = 'menuone,noinsert,noselect'

-- search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
-- opt.hlsearch = false

-- tabs
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- UI
opt.number = true
opt.relativenumber = true
opt.showmatch = true
opt.colorcolumn = '81'
g.splitright = true
g.splitbottom = true
opt.linebreak = true
opt.termguicolors = true
opt.signcolumn = 'yes'
opt.cmdheight = 2
opt.scrolloff = 7

-- misc
opt.synmaxcol = 240
opt.updatetime = 50


-- startup
opt.shortmess:append "sI" -- remove intro

local disabled_built_ins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "matchit",
    "tar",
    "tarPlugin",
    "rrhelper",
    "spellfile_plugin",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
    "tutor",
    "rplugin",
    "synmenu",
    "optwin",
    "compiler",
    "bugreport",
    "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end
