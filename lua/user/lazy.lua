local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

	-- colorscheme
	{'lunarvim/darkplus.nvim', name = "darkplus", priority = 1000},
  { "rose-pine/neovim", name = "rose-pine" },

  -- telescope 
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

  -- tree-sitter
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'}

}

local opts = {}

require("lazy").setup(plugins, opts)
