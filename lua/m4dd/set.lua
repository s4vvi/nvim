vim.cmd("autocmd!")
vim.cmd('syntax on')

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.wo.number = true
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = "zsh"
vim.opt.backupskip = {"/tmp/*", "/private/tmp/*"}
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.wrap = true
vim.opt.colorcolumn = "80"
vim.opt.backspace = {"start", "eol", "indent"}
vim.opt.path:append {"**"}
vim.opt.wildignore:append {"*/node_modules/*"}
vim.opt.termguicolors = true

vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
vim.cmd([[set clipboard^=unnamed,unnamedplus]])


vim.opt.formatoptions:append {"r"}
