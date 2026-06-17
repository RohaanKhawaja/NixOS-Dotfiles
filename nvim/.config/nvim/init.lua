-- Rohaan's NixOS Nvim Config - Master init.lua file

require("options")
require("keymaps")
require("autocmds")

--vim.schedule(function()
  --require("plugins.theme")
  --require("plugins.ui")
  --require("plugins.editor")
  --require("plugins.lsp")
  --require("plugins.completion")
  --require("plugins.snippets")
  --require("plugins.latex")
--end)

require("plugins.theme")
require("plugins.ui")
require("plugins.editor")
require("plugins.lsp")
require("plugins.completion")
require("plugins.autopairs")
require("plugins.snippets")
require("plugins.latex")
