require("systemysterio.keymaps")
require("systemysterio.options")
local lualine_v = require("systemysterio.var.lualine")

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

local opts = {
	ui = {
		border = "single"
	}
}

require("lazy").setup('plugins', opts)
require("lualine").setup(lualine_v)

vim.cmd("colorscheme kanagawa-lotus")
vim.cmd("colorscheme kanagawa-wave")
vim.cmd("colorscheme kanagawa-dragon")
