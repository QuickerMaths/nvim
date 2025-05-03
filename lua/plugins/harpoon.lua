return {
	"ThePrimeagen/harpoon",
	config = function()
		vim.keymap.set("n", "<leader>ha", function()
			require("harpoon.mark").add_file()
		end)
		vim.keymap.set("n", "<leader>qm", function()
			require("harpoon.ui").toggle_quick_menu()
		end)
		vim.keymap.set("n", "<leader>z", function()
			require("harpoon.ui").nav_file(1)
		end)
		vim.keymap.set("n", "<leader>x", function()
			require("harpoon.ui").nav_file(2)
		end)
		vim.keymap.set("n", "<leader>c", function()
			require("harpoon.ui").nav_file(3)
		end)
		vim.keymap.set("n", "<leader>v", function()
			require("harpoon.ui").nav_file(4)
		end)
	end,
}
