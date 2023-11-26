local options = {
	backup = false,
	clipboard = 'unnamedplus',
	cmdheight = 2,
	conceallevel = 0,
	fileencoding = 'utf-8',
	hlsearch = false,
	incsearch = true,
	mouse = 'a',
	pumheight = 5,
	termguicolors = true,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	timeoutlen = 1000,
	number = true,
	relativenumber = true,
	cindent = true,
	numberwidth = 4,
	signcolumn = 'yes',
	wrap = false,
	laststatus = 3,
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	shiftround = true,
	guicursor = "n-v-c-i:block",
	guifont = "JetBrainsMono Nerd Font Medium:h14",
	shellxquote = "",
	expandtab = true,
	autoindent = true,
	smartindent = true,
	scrolloff = 5,
	equalalways = false,
}

-- for options and values in the options table, set them using vim.opt.<option> = <value>
for k, v in pairs(options) do
	vim.opt[k] = v
end

-- instead of highlighting the line every time i want to see it
-- it makes sense to just have to current line hightlighted all the time
-- https://github.com/tjdevries/config_manager/blob/master/xdg_config/nvim/plugin/options.lua

-- vim.opt.cursorline = true -- Highlight the current line
-- local group = vim.api.nvim_create_augroup("CursorLineControl", { clear = true })
-- local set_cursorline = function(event, value, pattern)
--   vim.api.nvim_create_autocmd(event, {
--     group = group,
--     pattern = pattern,
--     callback = function()
--       vim.opt_local.cursorline = value
--     end,
--   })
-- end

-- set_cursorline("WinLeave", false)
-- set_cursorline("WinEnter", true)
-- set_cursorline("FileType", false, "TelescopePrompt")

