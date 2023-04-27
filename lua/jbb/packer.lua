-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

   use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
	use('nvim-treesitter/playground')

	use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}

use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
};

use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
  config = function()
    require("nvim-tree").setup {}
  end
}
use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup{
        open_mapping = [[<A-1>]],
        autochdir = true,
        hide_numbers = true,
        direction = 'horizontal',
        size = 10,
  }
end
}

use 'navarasu/onedark.nvim'
require('onedark').setup {
	style = 'darker'

}


use({
	"Pocco81/true-zen.nvim",
	config = function()
		 require("true-zen").setup {
		 }
	end,
})

end)
