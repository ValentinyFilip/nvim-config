-- Determine the home directory based on the operating system
local home_dir = os.getenv("HOME")
if vim.loop.os_uname().sysname == "Windows_NT" then
    home_dir = os.getenv("USERPROFILE")
end

-- Set the undo directory based on the home directory


vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
if home_dir then
    vim.opt.undodir = home_dir .. "/.nvim/undodir"
    if vim.loop.os_uname().sysname == "Windows_NT" then
        vim.opt.undodir = home_dir .. "\\.nvim\\undodir"
    end
end
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
