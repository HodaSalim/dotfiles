return{
    "nvim-treesitter/nvim-treesitter",
    build = function()
		require("nvim-treesitter.install").update({ with_sync = true })
	end,
    event = { "BufEnter" },
	dependencies = {
		-- Additional text objects for treesitter
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
    config = function()
        require("nvim-treesitter.configs").setup({
			ensure_installed = {
			    "bash",
				"c",
				"css",
				"gleam",
				"graphql",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"ocaml",
				"ocaml_interface",
				"prisma",
				"tsx",
				"typescript",
				"vim",
				"svelte",
				"yaml",
			},
            sync_install = false,
            auto_install = true,
            indent = {
                enable = true
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { "markdown" },
            },
            autotag = {
                enable = ture,
            },
        })
    end
}
