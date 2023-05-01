-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])
return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    -- or                            , branch = '0.1.x',
    requires = { { "nvim-lua/plenary.nvim" } },
  })

  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      -- add your treesiter-specific options here!
      require("nvim-treesitter.configs").setup({
        highlight = {
          additional_vim_regex_highlighting = false,
        },
        autotag = {
          enable = true,
        },
      })
    end,
  })

  use("nvim-treesitter/playground")
  use({
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    requires = {
      -- LSP Support
      { "neovim/nvim-lspconfig" }, -- Required
      {
        -- Optional
        "williamboman/mason.nvim",
        run = function()
          pcall(vim.cmd, "MasonUpdate")
        end,
      },
      { "williamboman/mason-lspconfig.nvim" }, -- Optional

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },    -- Required
      { "hrsh7th/cmp-nvim-lsp" }, -- Required
      { "L3MON4D3/LuaSnip" },    -- Required
      { "windwp/nvim-ts-autotag" }, -- Optional
    },
  })

  use({
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end,
  })

  use({
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons", -- optional
    },
    config = function()
      require("nvim-tree").setup({})
    end,
  })
  use({
    "akinsho/toggleterm.nvim",
    tag = "*",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<A-1>]],
        autochdir = true,
        hide_numbers = true,
        direction = "horizontal",
        size = 10,
      })
    end,
  })

  use({
    "folke/zen-mode.nvim",
    config = function()
      require("toggleterm").setup({
        direction = "float",
        on_open = function(term)
          -- Disable Zen mode when a terminal is opened
          if not term.bufnr then
            require("zen-mode").disable()
          end
        end,
        on_close = function(term)
          -- Re-enable Zen mode when a terminal is closed
          if not term.bufnr then
            require("zen-mode").enable()
          end
        end,
      })
      require("zen-mode").setup({
        window = {
          list = {
            { filetype = "toggleterm" },
          },
        },
      })
    end,
  })
  use({ "jose-elias-alvarez/null-ls.nvim" })

  use("sainnhe/gruvbox-material")
  use("ThePrimeagen/harpoon")
  use({
    "nvim-lualine/lualine.nvim",
    requires = {
      "nvim-tree/nvim-web-devicons",
      opt = true,
    },
  })
end)
