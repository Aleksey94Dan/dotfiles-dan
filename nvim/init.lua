require('packages')
require('keybindings')


-- global options: vim.o
vim.g.mapleader = '<Space>'
vim.g.localleader = ','
vim.o.encoding = 'utf-8'
vim.o.cmdheight = 2
vim.o.termguicolors = true
vim.o.splitright = true

-- local option: vim.bo
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4
vim.bo.autoindent = true
vim.bo.fileformat = 'unix'


-- window option: vim.wo
vim.wo.relativenumber = true
vim.wo.scrolloff = 10


-- set colorscheme
vim.opt.background = "dark"
vim.cmd([[colorscheme gruvbox]])


require("nvim-tree").setup({
      sort_by = "case_sensitive",
      hijack_cursor = true,
      view = {
        adaptive_size = true,
        mappings = {
          list = {
            { key = "u", action = "dir_up" },
          },
        },
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })

