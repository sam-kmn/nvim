if vim.g.vscode then
	-- VSCode extension
else
	-- ordinary Neovim
	require("sam.plugins-setup")
	require("sam.core.options")
	require("sam.core.keymaps")
	require("sam.core.colorscheme")
	require("sam.plugins.comment")
	require("sam.plugins.nvim-tree")
	require("sam.plugins.lualine")
	require("sam.plugins.telescope")
	require("sam.plugins.nvim-cmp")
	require("sam.plugins.lsp.mason")
	require("sam.plugins.lsp.lspsaga")
	require("sam.plugins.lsp.lspconfig")
	require("sam.plugins.lsp.null-ls")
	require("sam.plugins.autopairs")
	require("sam.plugins.treesitter")
	require("sam.plugins.gitsigns")
	require("sam.plugins.bufferline")
end
