return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	-- or                              , branch = '0.1.x',
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")

		-- Search files
		vim.keymap.set("n", "<leader>pf", builtin.find_files)

		-- Search for the word unther the cursor using grep
		vim.keymap.set("n", "<leader>pws", function()
			local word = vim.fn.expand("<cword>")
			builtin.grep_string({ search = word })
		end)

		-- Search for the line under the cursor using grep
		vim.keymap.set("n", "<leader>pWs", function()
			local word = vim.fn.expand("<cWORD>")
			builtin.grep_string({ search = word })
		end)

		-- Search using grep
		vim.keymap.set("n", "<leader>ps", builtin.live_grep)
	end,
}
