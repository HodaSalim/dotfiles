vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +ux %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- Switch to English - mapping
vim.api.nvim_set_keymap("n", "<Leader>E", ":lua EngType()<CR>", { noremap = true })

-- Switch to Arabic - mapping
vim.api.nvim_set_keymap("n", "<Leader>A", ":lua AraType()<CR>", { noremap = true })

-- Switch to English - function
function EngType()
	-- To switch back from Arabic
	vim.api.nvim_command("set noarabic") -- Restore default (US) keyboard layout
end

-- Switch to Arabic - function
function AraType()
	vim.api.nvim_command("set arabic")
end
