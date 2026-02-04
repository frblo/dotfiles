return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local parsers = {
			"bash",
			"rust",
			"c",
			"diff",
			"html",
			"lua",
			"luadoc",
			"markdown",
			"markdown_inline",
			"query",
			"vim",
			"vimdoc",
			"svelte",
			"typescript",
			"javascript",
		}
		require("nvim-treesitter").setup()

		vim.defer_fn(function()
			require("nvim-treesitter").install(parsers):wait(300000)
		end, 0)

		vim.api.nvim_create_autocmd("FileType", {
			pattern = parsers,
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
