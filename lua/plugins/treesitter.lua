return {
	'nvim-treesitter/nvim-treesitter',
	dependencies = {
		'nvim-treesitter/nvim-treesitter-textobjects',
	},
	config = function()
		pcall(require('nvim-treesitter.install').update { with_sync = true })
		require('nvim-treesitter.install').compilers = { "clang" }
		require('nvim-treesitter.configs').setup {
			ensure_installed = {
                "astro",
				"bash",
				"c",
				"cpp",
                "css",
                "go",
                "graphql",
                "html",
                "javascript",
                "jsdoc",
				"json",
                "kotlin",
				"lua",
                "luadoc",
                "markdown",
                "markdown_inline",
                "php",
                "phpdoc",
                "pug",
                "python",
                "ruby",
                "rust",
                "scss",
                "sql",
                "svelte",
                "toml",
                "tsx",
				"typescript",
                "vue",
                "yaml",
                "zig",
			},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			autopairs = {
				enable = true,
			},
			indent = {
				enable = true,
			},
		}
	end
}
