local M = {}

function M.load()
    return require("packer").startup(function(use)
        use "wbthomason/packer.nvim" -- Packer
        use "tpope/vim-sensible" -- Sensible defaults
        use "tpope/vim-sleuth" -- Automatic indent settings
        use "ntpeters/vim-better-whitespace" -- Whitespace highlighting
        use {
            "glepnir/dashboard-nvim", -- Dashboard
            config = function() require("dashboard-config").config() end,
        }
        use "puremourning/vimspector" -- Debugger
        use "airblade/vim-gitgutter" -- Git diff in sign column
        use({
            "catppuccin/nvim", -- Catppuccin colorscheme
            config = function() require("catppuccin-config").config() end,
            as = "catppuccin",
        })
        use {
            "kyazdani42/nvim-tree.lua", -- Filetree
            config = function() require("nvim-tree-config").config() end,
            requires = { "kyazdani42/nvim-web-devicons" }, -- Icons
        }
        use {
            "neovim/nvim-lspconfig", -- LSP Config
            config = function() require("languageservers").config() end,
        }
        use {
            "ms-jpq/coq_nvim", -- Completions
            config = function() require("coq-config").config() end,
        }
        use {
            "ms-jpq/coq.artifacts", -- Snippets
            branch = "artifacts",
        }
        use {
            "ms-jpq/coq.thirdparty", -- Extras
            config = function() require("3p-config").config() end,
            branch = "3p",
        }
        use {
            "ray-x/lsp_signature.nvim", -- Sig help
            config = function() require("signature-config").config() end,
        }
        use {
            "nvim-treesitter/nvim-treesitter", -- Treesitter, duh
            config = function() require("treesitter-config").config() end,
            run = ":TSUpdate",
        }
        use "nvim-treesitter/playground" -- Check capture groups and view tree
        use "nvim-treesitter/nvim-treesitter-context" -- Show current function or class at top of window
        use {
            "SmiteshP/nvim-gps", -- Show location in status line
            config = function() require("nvim-gps").setup() end,
        }
        use "andymass/vim-matchup" -- Better %
        use "mbbill/undotree" -- Undo window
        use {
            "lukas-reineke/indent-blankline.nvim", -- Show tabs and spaces
            config = function() require("indent-blankline-config").config() end,
        }
        use {
            "windwp/nvim-autopairs", -- Delimiter helper
            config = function() require("autopairs-config").config() end,
        }
        use {
            "nvim-lualine/lualine.nvim", -- Statusline
            config = function() require("lualine-config").config() end,
        }
        use {
            "j-hui/fidget.nvim", -- Show lsp load status
            config = function() require("fidget").setup({}) end,
        }
        use "nvim-lua/plenary.nvim" -- Lua functions
        use "nvim-telescope/telescope.nvim" -- Fzf replacement
        use "folke/trouble.nvim" -- List for showing diagnostics
        use {
            "akinsho/toggleterm.nvim", -- Term window manager
            config = function() require("toggleterm").setup({}) end,
        }
        use {
            "anuvyklack/pretty-fold.nvim", -- Foldtext custmization and preview
            requires = { "anuvyklack/nvim-keymap-amend" },
            config = function()
                require("pretty-fold").setup({})
                require("pretty-fold.preview").setup()
            end,
        }
        use {
            "simrat39/symbols-outline.nvim", -- Treelike view for symbols
            config = function() require("symbolsoutline-config").config() end,
        }
        use {
            "rmagatti/goto-preview", -- Show definitions in preview windows
            config = function() require("goto-preview").setup({}) end,
        }
        use {
            "folke/todo-comments.nvim", -- Show todo comments in a project
            config = function() require("todo-comments").setup({}) end,
        }
        use {
            "luukvbaal/stabilize.nvim", -- Stabilize window open/close events
            config = function() require("stabilize").setup() end,
        }
        use "jghauser/mkdir.nvim" -- Create missing folders on save
        use "stevearc/dressing.nvim" -- Improve default ui
        use {
            "alvarosevilla95/luatab.nvim", -- Tabline
            config = function() require("luatab").setup({}) end,
        }
        use "kevinhwang91/nvim-bqf" -- Better quickfix window
        use "gpanders/editorconfig.nvim" -- Use editorconfig files
        use {
            "pianocomposer321/yabs.nvim", -- Build system
            config = function() require("yabs-config").config() end,
        }
        use "Hoffs/omnisharp-extended-lsp.nvim" -- Omnisharp extensions
        use "mfussenegger/nvim-jdtls" -- Full jdtls support
        use "https://bitbucket.org/sw-samuraj/vim-gradle.git" -- Gradle file extension, syntax highlighting, and folding
        use "antoinemadec/FixCursorHold.nvim" -- Cursorhold performance fix
        use {
            "someone-stole-my-name/yaml-companion.nvim", -- Yaml lsp companion
            config = function() require("telescope").load_extension("yaml_schema") end,
        }
        use "rcarriga/nvim-notify" -- Notification manager
        use "b0o/mapx.nvim"
        use "RRethy/nvim-treesitter-endwise"
        use {
            "~/gitclone/haste-nvim",
            config = function() require("haste").setup({ setclip = true }) end,
        }
        use {
            "iamcco/markdown-preview.nvim",
            run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" },
            config = function() vim.g.mkdp_auto_start = 0 end,
        }
        use "windwp/nvim-ts-autotag" -- Html/tsx autotags
        use {
            "norcalli/nvim-colorizer.lua",
            config = function() require("colorizer").setup() end,
        }
    end)
end

return M
