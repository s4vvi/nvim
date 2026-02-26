require('catppuccin').setup {
    transparent_background = true,
    color_overrides = {
        all = {
            text = '#E1E1E1',
            surface1 = '#d787ff',
            mantle = '#222222'
        },
    },
    integrations = {
        nvimtree = true
    },
}

vim.cmd.colorscheme 'catppuccin'
vim.api.nvim_exec(
[[
hi Visual guifg=#61538d guibg=#222222 gui=none
hi Search guifg=#FFAF87 guibg=#222222 gui=none
hi EndOfBuffer guifg=#61538d
hi ColorColumn guibg=#61538d
]],true)
