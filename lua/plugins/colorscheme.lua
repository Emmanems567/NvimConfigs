return {
  -- Cattpuccin
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
				styles = {
					comments = {},
					conditionals = {},
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
					operators = {},
				},
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					telescope = {
						enabled = true,
					},
					notify = true,
					mini = true,
					lsp_trouble = true,
					which_key = true,
					mason = true,
				},
			})
		end
	},
  -- TokyoNight
	{
    "folke/tokyonight.nvim",
    name = "tokyonight",
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = true,
        terminal_colors = true,
        styles = {
          comments = { italic = false },
          keywords = { italic = false },
          sidebars = "transparent" or "dark",
          floats = "transparent" or "dark",
         }
      })
    end
  },
  -- OneDark
  {
    "navarasu/onedark.nvim",
    name = "OneDark",
    priority = 1000,
    config = function()
      require('onedark').setup {
        style = 'darker',
        transparent = true,
      }
    end
  }
}
