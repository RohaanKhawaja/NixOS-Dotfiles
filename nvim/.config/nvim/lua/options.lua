-- Rohaan's NixOS Nvim Config - vim.opt options 

local options = { 
  -- Basic Settings 
  cursorline = true,	    -- Highlights current line 
  number = true,		    -- Line numbers
  relativenumber = true, -- Relative Line numbers
  wrap = true,		       -- Wrap lines
  showbreak = ">",	    -- Show symbol for line breaks
  scrolloff = 11, 		 -- Keep 10 lines above/below cursor 
  sidescrolloff = 8, 	 -- Keep 8 columns left/right of cursor 
  
  -- Indentation 
  tabstop = 3, 		    -- Tab width 
  shiftwidth = 2,		    -- Indent width
  softtabstop = 3, 	    -- Soft tab stop 
  expandtab = true, 	    -- Use spaces instead of tabs 
  smartindent = true,    -- Smart auto-indentation 

  -- Search settings 
  ignorecase = true,     -- Case insensitive search
  smartcase = true,	    -- Case sensitive iff uppercase in search
  hlsearch = false, 	    -- Don't highlight search results
  incsearch = true,	    -- Show matches as you type
} 

for k, v in pairs(options) do 
  vim.opt[k] = v 
end 
