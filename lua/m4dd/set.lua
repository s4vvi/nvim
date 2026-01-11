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
vim.opt.scrolloff = 10
vim.opt.shell = "zsh"
vim.opt.backupskip = {"/tmp/*", "/private/tmp/*"}
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.wrap = true
vim.opt.colorcolumn = "80"
vim.opt.backspace = {"start", "eol", "indent"}
vim.opt.path:append {"**"}
vim.opt.wildignore:append {"*/node_modules/*"}
vim.opt.termguicolors = true
vim.opt.spelllang = { "en_us" }

vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
vim.cmd([[set clipboard^=unnamed,unnamedplus]])

vim.opt.formatoptions:append {"r"}

vim.cmd([[
augroup filetypes
    autocmd FileType * set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
    autocmd FileType go set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
    autocmd FileType lua set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
    autocmd FileType markdown set norelativenumber nonumber colorcolumn=0 spell
    autocmd VimEnter *.md :ZenMode
augroup END
]])

-- Create a callback to work with both VimEnter & BufReadPost.
vim.api.nvim_create_autocmd(
  { "VimEnter", "BufReadPost" },
  {
    pattern = { "*.md" },
    callback = function()
      local zen_mode = require("zen-mode")

      zen_mode.open()
    end
  }
)
