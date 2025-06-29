return {

	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{

		"williamboman/mason-lspconfig.nvim",
		config = function()
			local servers = {

				"clangd",
				"eslint",
				"jdtls",
				"pyright",
				"html",
				"cssls",
				"lua-ls",
			}

			require("mason-lspconfig").setup({
				ensure_installed = servers,
				automatic_installation = true,
			})
		end,
	},
	{

		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.cssls.setup({ capabilities = capabilities })
			lspconfig.html.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({ capabilities = capabilities })
			lspconfig.jdtls.setup({ capabilities = capabilities })
			lspconfig.pyright.setup({ capabilities = capabilities })
			lspconfig.cssls.setup({ capabilities = capabilities })
			lspconfig.eslint.setup({ capabilities = capabilities })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set({ "n", "v" }, "<leader>ac", vim.lsp.buf.code_action, {})
		end,
	},
}
