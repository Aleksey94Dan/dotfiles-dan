local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup({

  function(use)

    use 'mhinz/vim-startify'
    use 'ellisonleao/gruvbox.nvim'
    use 'ntpeters/vim-better-whitespace'
    use 'tpope/vim-surround'


    use {
      'lukas-reineke/indent-blankline.nvim',
      config = function()
        require('indent_blankline').setup {
          char = '┊',
          show_trailing_blankline_indent = false,
        }
      end
    }
    use { 'NMAC427/guess-indent.nvim',
      config = function() require('guess-indent').setup {} end,
    }

    -- файловый проводник
    use {'kyazdani42/nvim-tree.lua',
	requires = {'kyazdani42/nvim-web-devicons'},
        tag = 'nightly'
    }
    use {'feline-nvim/feline.nvim',
        after = "nvim-web-devicons",
        config = function()
        require('feline').setup({}) end
    }

    use {
      'nvim-telescope/telescope.nvim',
      config = function()
        require('telescope').setup{
          defaults = {
            sorting_strategy = "ascending",
            mappings = {
              -- restore default behavior
              i = {
                ['<C-u>'] = false,
                ['<C-d>'] = false,
              },
            },
          },
          pickers = {
            buffers = {
              ignore_current_buffer = true,
              sort_mru = true
            }
          },
        }
      end,
      requires = { 'nvim-lua/plenary.nvim' }
    }
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
    }

      require('treesitter').run(use)
      require('lsp').run(use)
    end,
    config = {
    enable = true,
    -- log = { level = 'debug' },
    display = {
      open_fn = require('packer.util').float,
    }
  }
})



