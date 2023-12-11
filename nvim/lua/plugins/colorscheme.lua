return {
	-- Theme inspired by Atom
	"navarasu/onedark.nvim",
	priority = 1000,
	options = {
		style = "dark",
	},
	config = function()
		vim.cmd.colorscheme("onedark")
	end,
}
