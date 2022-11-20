return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- gruvbox
  use 'gruvbox-community/gruvbox'
  -- fzf
  -- use = { 'junegunn/fzf', run = './install --bin', }
  -- 
  use("nvim-lualine/lualine.nvim") -- A better statusline

end)

