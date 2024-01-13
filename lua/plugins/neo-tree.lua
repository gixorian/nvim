return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
		require("neo-tree").setup({
			event_handlers = {
				{
					event = "vim_buffer_enter",
					handler = function()
						if vim.bo.filetype == "neo-tree" then
							vim.cmd("setlocal relativenumber")
						end
					end,
				},
			},
		})
	end,
}
