return {
	"luk400/vim-jukit",
	lazy = false,
	config = function()
		vim.g.jukit_terminal = 'kitty'
		vim.g.jukit_pdf_viewer = 'tdf'
		vim.g.jukit_output_new_os_window = 1
		vim.g.jukit_inline_plotting = 1
	end
}
