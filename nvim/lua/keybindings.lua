
vim.api.nvim_set_keymap('', '<C-n>', ':NvimTreeOpen<Enter>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<C-t>', ':NvimTreeToggle<Enter>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<Space>0', ':tabfirst<Enter>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<Space>1', ':tabprevious<Enter>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<Space>2', ':tabNext<Enter>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<Space>9', ':tablast<Enter>', { noremap = true, silent = true })



vim.api.nvim_set_keymap('n', '<Space>ff', ':Telescope find_files<Enter>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>fg', ':Telescope live_grep<Enter>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>fb', ':Telescope buffers<Enter>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>fh', ':Telescope help_tags<Enter>', { noremap = true, silent = true })


vim.cmd[[
set clipboard+=unnamedplus
map <Leader>y "*y
map <Leader>p "*p
]]
