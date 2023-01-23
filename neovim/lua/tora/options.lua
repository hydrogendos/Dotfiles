local options = {
    -- =====================
    -- Editor Settings
    -- =====================
    
    -- no backup or swap file while editing
    backup = false,
    swapfile = false,
    -- do not edit files that another editor is using
    writebackup = false,
    -- enable persistent undo
    undodir = os.getenv("HOME") .. "/.vim/undodir",
    undofile = true,

    -- allows neovim to access the system clipboard
    clipboard = "unnamedplus",
    
    -- auto complete for cmp
    completeopt = { "menuone", "noselect" }, 

    -- highlight all matches on previous search pattern
    hlsearch = true,
    -- enable searching while you type
    incsearch = true,
    -- case-insensitivity for searching text
    ignorecase = true,
    smartcase = true,
    
    -- highlight the current line
    cursorline = true,

    -- set numbered lines
    number = true,
    -- set relative numbered lines
    relativenumber = true,

    -- allow the mouse to be used in neovim
    mouse = "a",

    -- pop up menu height
    pumheight = 10,

    -- show mode when editing
    showmode = true,

    -- make indenting smarter again
    smartindent = true,
    
    -- set number column width {default 4}
    numberwidth = 2,
    -- always show the sign column, otherwise it would shift the text each time
    signcolumn = "yes",

    -- display long lines as multiple lines
    wrap = true,

    -- Control how fast scrolling is
    scrolloff = 8,
    -- Remove scroll bar
    sidescrolloff = 8,

    -- the font used in graphical neovim applications
    guifont = "monospace:h17",

    -- force all horizontal splits to go below current window
    splitbelow = true, 
    -- force all vertical splits to go to the right of current window
    splitright = true,

    -- set term gui colors (most terminals support this)
    termguicolors = true,

    -- time to wait for a mapped sequence to complete (in milliseconds)
    timeoutlen = 1000,

    -- faster completion (4000ms default)
    updatetime = 300,

    -- =====================
    -- Syntax
    -- =====================
    -- always show tabs
    showtabline = 4,
    -- convert tabs to spaces
    expandtab = true,
    -- the number of spaces inserted for each indentation
    shiftwidth = 4,
    -- insert spaces for a tab
    tabstop = 4,
    -- insert spaces for a tab
    softtabstop = 4,

    -- conceal level so that `` is visible in markdown files
    conceallevel = 0,

    -- the encoding written to a file
    fileencoding = "utf-8",

}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
