return {
	"ThePrimeagen/harpoon",

	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		vim.keymap.set("n", "<Leader>ha", mark.add_file)
    vim.keymap.set('n', '<Leader>hr', mark.rm_file)

		vim.keymap.set("n", "<Leader>ht", ui.toggle_quick_menu)
		vim.keymap.set("n", "<Leader>h1", function() ui.nav_file(1) end)
		vim.keymap.set("n", "<Leader>h2", function() ui.nav_file(2) end)
		vim.keymap.set("n", "<Leader>h3", function() ui.nav_file(3) end)
		vim.keymap.set("n", "<Leader>h4", function() ui.nav_file(4) end)
	end,
}
