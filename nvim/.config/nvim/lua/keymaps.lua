-- Rohaan's NixOS Nvim Config - keymaps

-- Clear search highlight
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>', { noremap = true })

-- Keep cursor centred when scrolling
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true })

-- Keep cursor centred when jumping between search results
vim.keymap.set('n', 'n', 'nzzzv', { noremap = true })
vim.keymap.set('n', 'N', 'Nzzzv', { noremap = true })

-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true })

-- Better indenting in visual mode (stay in visual mode after indent)
vim.keymap.set('v', '<', '<gv', { noremap = true })
vim.keymap.set('v', '>', '>gv', { noremap = true })

-- Move lines up/down in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true })

-- Set leader key to SPACE
vim.g.mapleader = ' '

-- Delete without yanking by default
vim.keymap.set('n', 'd', '"_d', { noremap = true })
vim.keymap.set('n', 'D', '"_D', { noremap = true })
vim.keymap.set('x', 'd', '"_d', { noremap = true })

-- Change without yanking by default
vim.keymap.set('n', 'c', '"_c', { noremap = true })
vim.keymap.set('n', 'C', '"_C', { noremap = true })
vim.keymap.set('x', 'c', '"_c', { noremap = true })

-- Leader + delete = normal delete (yanks)
vim.keymap.set('n', '<Leader>d', 'd', { noremap = true })
vim.keymap.set('n', '<Leader>D', 'D', { noremap = true })
vim.keymap.set('x', '<Leader>d', 'd', { noremap = true })

-- Leader + change = normal change (yanks)
vim.keymap.set('n', '<Leader>c', 'c', { noremap = true })
vim.keymap.set('n', '<Leader>C', 'C', { noremap = true })
vim.keymap.set('x', '<Leader>c', 'c', { noremap = true })

-- Find and replace (current word under cursor)
vim.keymap.set('n', '<Leader>r', ':%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>', { noremap = true })

-- Save file
vim.keymap.set('n', '<Leader>w', ':w<CR>', { noremap = true })

-- Quit
vim.keymap.set('n', '<Leader>q', ':q<CR>', { noremap = true })
--
-- File manager (netrw)
vim.keymap.set('n', '<Leader>e', ':Ex<CR>', { noremap = true })       -- Open netrw in current window
vim.keymap.set('n', '<Leader>pv', ':Vex<CR>', { noremap = true })     -- Open netrw in vertical split
