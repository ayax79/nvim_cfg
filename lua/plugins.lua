vim.cmd('packadd packer.nvim')

--- startup and add configure plugins
return require("packer").startup(function(use)
	-- have packer manage itself 
  	use 'wbthomason/packer.nvim'

	-- a plugin to install and manage LSP servers, debuggers and linters.
	use 'williamboman/mason.nvim'    

	-- complement to mason
    	use 'williamboman/mason-lspconfig.nvim'

	-- lsp configurations files
	use 'neovim/nvim-lspconfig' 

	-- tools to setup lspconfig for rust-analyzer
    	use 'simrat39/rust-tools.nvim'

	-- Completion framework:
    	use 'hrsh7th/nvim-cmp' 

    	-- LSP completion source:
    	use 'hrsh7th/cmp-nvim-lsp'

	-- Useful completion sources:
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'                             
	use 'hrsh7th/cmp-path'                              
	use 'hrsh7th/cmp-buffer'                            
	use 'hrsh7th/vim-vsnip'

	-- parser generation and incremental parsing library
	use 'nvim-treesitter/nvim-treesitter'

	-- debugger
	use 'puremourning/vimspector'

	-- file finder
	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.x',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
  		'nvim-tree/nvim-tree.lua',
  		requires = {
    			'nvim-tree/nvim-web-devicons', -- optional, for file icons
  		},
  		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	use {
  		'phaazon/hop.nvim',
  		branch = 'v2', -- optional but strongly recommended
	}


	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {
	    'saecki/crates.nvim',
	    event = { "BufRead Cargo.toml" },
	    requires = { { 'nvim-lua/plenary.nvim' } },
	    config = function()
		require('crates').setup()
	    end,
	}
	-- themes
	use 'arcticicestudio/nord-vim'

  end
)
