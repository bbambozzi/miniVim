require('mini')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  "wbthomason/packer.nvim",
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
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
  },

  "nvim-treesitter/playground",
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
      -- LSP Support
      { "neovim/nvim-lspconfig" }, -- Required
      {
        -- Optional
        "williamboman/mason.nvim",
        build = function()
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
  },

  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- optional
    },
    config = function()
      require("nvim-tree").setup({})
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    tag = "*",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<A-1>]],
        autochdir = true,
        hide_numbers = true,
        direction = "float",
        size = 10,
      })
    end,
  },

  {
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
  },
  { "jose-elias-alvarez/null-ls.nvim" },

  "sainnhe/gruvbox-material",
  "ThePrimeagen/harpoon",
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
}
local opts = {}

require("lazy").setup(plugins, opts)

