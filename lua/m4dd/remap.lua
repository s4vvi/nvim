-- Leader?
-- Stolen binds I know uwu 
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex) -- Directory view / Explore

vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv') -- Move current line down
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv') -- Move current line up

vim.keymap.set('n', '<C-d>', '<C-d>zz') -- Down half page / top = cursor
vim.keymap.set('n', '<C-u>', '<C-u>zz') -- Up half page / bottom = cursor

vim.keymap.set('n', 'Q', '<nop>') -- Don't need this

vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

-- Yes still needed
vim.keymap.set('n', '<C-Z>', 'u')
vim.keymap.set('n', '<C-Y>', '<C-R>')
vim.keymap.set('n', '<C-S-Right>', '<C-O>$')
vim.keymap.set('n', '<C-S-Left>', '<C-O>0')
vim.keymap.set('i', '<C-BS>', '<C-w>')
vim.keymap.set('i', '<C-h>', '<C-w>')
vim.keymap.set('i', '<C-S-Right>', '<C-O>$')
vim.keymap.set('i', '<C-S-Left>', '<C-O>0')
vim.keymap.set('i', '<C-Z>', '<C-O>u')
vim.keymap.set('i', '<C-Y>', '<C-O><C-R>')

-- Search & replace
vim.keymap.set('n', '<C-h>', ':%s/')
vim.keymap.set('v', '<C-h>', ':s/')
vim.keymap.set('n', '<C-k>', ':%s/\\(.*\\)')
vim.keymap.set('v', '<C-k>', ':s/\\(.*\\)')

-- Exec
vim.keymap.set('n', '<C-j>', ':%!')

-- LSP
vim.keymap.set('n', '<leader>lr', '<cmd>LspRestart<cr>',
    {silent = true, noremap = true}
)

-- Tmux Integration
local nvim_tmux_nav = require("nvim-tmux-navigation")
nvim_tmux_nav.setup {
    disable_when_zoomed = true
}
vim.keymap.set('n', "<M-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
vim.keymap.set('n', "<M-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
vim.keymap.set('n', "<M-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
vim.keymap.set('n', "<M-l>", nvim_tmux_nav.NvimTmuxNavigateRight)

-- Telescope
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { silent = true })
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { silent = true })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { silent = true })
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { silent = true })

-- Undotree
vim.keymap.set('n', '<leader>u', '<cmd>UndotreeToggle<cr>', { silent = true })

-- Harpoon
local harpoon = require('harpoon')
vim.keymap.set('n', '<leader>ha', function() harpoon:list():add() end)
vim.keymap.set('n', '<leader>hp', function() harpoon:list():prev() end)
vim.keymap.set('n', '<leader>hn', function() harpoon:list():next() end)
vim.keymap.set('n', '<leader>hh', function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
end)

-- Bookmark 
local bm = require('bookmarks')
vim.keymap.set('n', 'mm', bm.bookmark_toggle)
vim.keymap.set('n', 'mi', bm.bookmark_ann)
vim.keymap.set('n', 'mc', bm.bookmark_clean)
vim.keymap.set('n', 'mn', bm.bookmark_next)
vim.keymap.set('n', 'mp', bm.bookmark_prev)
vim.keymap.set('n', 'ml', bm.bookmark_list)

-- Trouble
vim.keymap.set('n', '<leader>tt', '<cmd>Trouble diagnostics toggle focus=true<cr>',
    {silent = true, noremap = true}
)
vim.keymap.set('n', '<leader>tq', '<cmd>Trouble quickfix<cr>',
    {silent = true, noremap = true}
)
vim.keymap.set('n', '<leader>ts', '<cmd>Trouble symbols toggle focus=false<cr>',
    {silent = true, noremap = true}
)

-- ZenMode
vim.keymap.set('n', '<leader>zz', '<cmd>ZenMode<cr>')

-- Fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local Fugitive = vim.api.nvim_create_augroup("Fugitive", {})
local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWinEnter", {
    group = Fugitive,
    pattern = "*",
    callback = function()
        if vim.bo.ft ~= "fugitive" then
            return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = {buffer = bufnr, remap = false}

        vim.keymap.set("n", "<leader>pl", function()
            vim.cmd.Git('pull')
        end, opts)


        vim.keymap.set("n", "<leader>pu", function()
            vim.cmd.Git('push')
        end, opts)

        vim.keymap.set("n", "<leader>po", ":Git push -u origin ", opts);
    end,
})

-- Golang ERROR
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set(
    "n",
    "<leader>ea",
    "oassert.NoError(err, \"\")<Esc>F\";a"
)

vim.keymap.set(
    "n",
    "<leader>ef",
    "oif err != nil {<CR>}<Esc>Olog.Fatalf(\"error: %s\\n\", err.Error())<Esc>jj"
)

vim.keymap.set(
    "n",
    "<leader>el",
    "oif err != nil {<CR>}<Esc>O.logger.Error(\"error\", \"error\", err)<Esc>F.;i"
)
