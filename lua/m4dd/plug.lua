Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
    Plug 'tpope/vim-sensible'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'windwp/nvim-autopairs'
    Plug 'Pocco81/auto-save.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'airblade/vim-gitgutter'
    Plug 'mg979/vim-visual-multi'
    Plug 'kylechui/nvim-surround'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'tomasky/bookmarks.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'
    Plug 'f3fora/cmp-spell'
    Plug 'mbbill/undotree'
    Plug 'folke/trouble.nvim'
    Plug 'folke/zen-mode.nvim'
    Plug 'tpope/vim-fugitive'
    Plug 'williamboman/mason.nvim'
    Plug 'mhartington/formatter.nvim'
    Plug 'alexghergh/nvim-tmux-navigation'
    Plug "s3rvac/vim-syntax-yara"
    Plug (
        'ThePrimeagen/harpoon', {
            branch='harpoon2',
            dependecies={
                'nvim-lua/plenary.nvim',
                'nvim-telescope/telescope.nvim'
            }
        }
    )
    Plug (
        'catppuccin/nvim', {as='catppuccin'}
    )
    Plug 's4vvi/nvim-velo'
    Plug (
        'MeanderingProgrammer/render-markdown.nvim', {
            dependecies = {
                'nvim-treesitter/nvim-treesitter',
                'nvim-mini/mini.nvim',
            }
        }
    )
vim.call('plug#end')
