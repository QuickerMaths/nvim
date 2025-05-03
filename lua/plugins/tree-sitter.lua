-- plugins/tree-sitter.lua
return {
	"nvim-treesitter/nvim-treesitter",
	version = false, -- last release is way too old and doesn't work on Windows
	build = ":TSUpdate",
	opts_extend = { "ensure_installed" },
	opts = {
		ensure_installed = {
			'angular', 'bash', 'c', 'c_sharp', 'cmake', 'cpp', 'css', 'csv',
			'go', 'html', 'http', 'javascript', 'json', 'lua',
			'luadoc', 'make', 'markdown', 'markdown_inline', 'python',
			'sql', 'toml', 'typescript', 'vim', 'yaml'
		},
		-- Install parsers synchronously (only applied to `ensure_installed`)
		sync_install = false,
		highlight = {
			-- `false` will disable the whole extension
			enable = true,
		},
	},
}
