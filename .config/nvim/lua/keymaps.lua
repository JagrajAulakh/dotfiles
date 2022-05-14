vim.g.mapleader = ' '

local opts={noremap=true}

vim.api.nvim_set_keymap('n', '<leader>v', ':source ~/.config/nvim/init.lua<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>s', ':setlocal spell!<CR>', opts)
vim.api.nvim_set_keymap('n', 'j', 'gj', opts)
vim.api.nvim_set_keymap('n', 'k', 'gk', opts)

vim.api.nvim_set_keymap('n', 'zh', 'z10h', opts)
vim.api.nvim_set_keymap('n', 'zl', 'z10l', opts)


vim.api.nvim_set_keymap('n', 'Y', 'y$', opts)

-- "--------------------------
-- " System clipboard bindings
-- "--------------------------
vim.api.nvim_set_keymap('n', '<Leader>y', '"+y', opts)
vim.api.nvim_set_keymap('n', '<Leader>Y', '"+y$', opts)
vim.api.nvim_set_keymap('v', '<Leader>y', '"+y', opts)
vim.api.nvim_set_keymap('n', '<Leader>p', '"+p', opts)
vim.api.nvim_set_keymap('v', '<Leader>p', '"+p', opts)

-- "--------------------
-- " Tab/Window bindings
-- "--------------------
vim.api.nvim_set_keymap('n', 'ge', ':tabedit ', opts)
vim.api.nvim_set_keymap('n', '<C-n>', ':tabnew<CR>', opts)

vim.api.nvim_set_keymap('n', '<C-e>', ':RnvimrToggle<CR>', opts)
vim.api.nvim_set_keymap('t', '<C-e>', '<C-\\><C-n>:RnvimrToggle<CR>', opts)
vim.api.nvim_set_keymap('t', '<M-r>', '<C-\\><C-n>:RnvimrResize<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>dd', ':DiffSaved<CR>', opts)

opts = {noremap=true, silent=true}
vim.api.nvim_set_keymap('n', '<Leader><', ':tabmove -1<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>>', ':tabmove +1<CR>', opts)

opts = {noremap=true}
--- Telecope/Finding stuff
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>fr', '<cmd>Telescope resume<cr>', opts)
vim.api.nvim_set_keymap('n', '<F3>', ':Rg ', opts)

-- QuickFix stuff
vim.api.nvim_set_keymap('n', '<M-q>', ':copen<CR>', opts)
vim.api.nvim_set_keymap('n', '<M-k>', ':cprev<CR>', opts)
vim.api.nvim_set_keymap('n', '<M-j>', ':cnext<CR>', opts)
vim.api.nvim_set_keymap('v', 'J', ':m \'>+1<CR>gv=gv', opts)
vim.api.nvim_set_keymap('v', 'K', ':m \'<-2<CR>gv=gv', opts)


vim.api.nvim_set_keymap('n', '<M-l>', '<cmd>lua require("luasnip").jump(1)<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<M-h>', '<cmd>lua require("luasnip").jump(-1)<CR>', {noremap=true})
vim.api.nvim_set_keymap('i', '<M-l>', '<cmd>lua require("luasnip").jump(1)<CR>', {noremap=true})
vim.api.nvim_set_keymap('i', '<M-h>', '<cmd>lua require("luasnip").jump(-1)<CR>', {noremap=true})

