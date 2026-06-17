-- Fuzzy finder
require("telescope").setup({})

-- Git signs in the gutter
require("gitsigns").setup()

-- Treesitter (new API — no more configs.lua / .setup())
require("nvim-treesitter").install({ "lua", "python", "c", "cpp", "latex", "bibtex", "markdown", "vim", "vimdoc" })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    pcall(vim.treesitter.start)
  end,
})

-- Treesitter-based folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
