return {
	"folke/trouble.nvim",
	cmd = "Trouble",
	opts = {
		modes = {
			test = {
				focus = true,
				mode = "diagnostics",
				preview = {
					type = "split",
					relative = "win",
					position = "right",
					size = 0.3,
				},
			},
		},
	},
	config = function(_, opts)
		require("trouble").setup(opts)
		vim.keymap.set("n", "<leader>xx", function()
			require("trouble").toggle("test")
		end, { desc = "Toggle Trouble (test mode)" })
	end,
}
