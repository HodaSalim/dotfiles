vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "99999"

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.signcolumn = "no"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.cmd("autocmd VimEnter * highlight LineNr guibg=NONE")
vim.cmd("autocmd VimEnter * set laststatus=0 ruler")
vim.opt.statusline = ""
