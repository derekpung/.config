vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})
	use 'nvim-lualine/lualine.nvim'
	use 'lukas-reineke/indent-blankline.nvim'
	-- file nav
	use({
		'nvim-treesitter/nvim-treesitter',
		{
			run = ':TSUpdate'
		}
	})
	use('nvim-treesitter/playground')
	use {
		'nvim-treesitter/nvim-treesitter-textobjects',
		after = 'nvim-treesitter',
	}
	-- buffer nav
	use('theprimeagen/harpoon')
	-- undo history vis
	use('mbbill/undotree')
	-- comment toggles
	use 'numToStr/Comment.nvim'
	-- auto tab
	use 'tpope/vim-sleuth'
	-- fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make',
		cond = vim.fn.executable 'make' == 1
	}
	-- git
	use('tpope/vim-fugitive')
	use 'tpope/vim-rhubarb'
	use 'lewis6991/gitsigns.nvim'
	-- lsp
	use({
		'neovim/nvim-lspconfig',
		requires = {
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			'j-hui/fidget.nvim',
			'folke/neodev.nvim',
		},
	})
	-- autocomplete
	use({
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip'
		},
	})
end)
