local opts = { noremap = true, silent = true }

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.autoindent = true

vim.opt.scrolloff = 8
vim.opt.hlsearch = true

vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p')
vim.keymap.set({'n', 'v'}, '<leader>c', '"+d')

require("config.lazy")
require("config.lsp")
require("current-theme")
