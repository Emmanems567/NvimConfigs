return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- 🎨 Cambiar color del encabezado y recientes
		vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#89B4FA", bold = true }) -- Azul claro (Catppuccin Blue)
		vim.api.nvim_set_hl(0, "AlphaRecent", { fg = "#89B4FA" })

		-- 🖼 Encabezado personalizado
		dashboard.section.header.val = {
			[[⠀⠀⠀⠀⠀⠀⠀⢀⠠⠤⠤⠤⠤⠤⠄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⡠⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠑⠢⢄⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣤⡀⠀⠈⠑⢄⠀]],
			[[⠀⠀⣤⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠐⣆⠘⣿⣿⣤⣀⣿⣦⠀⠀⠑⡄]],
			[[⠀⢺⠛⠀⣴⠀⣴⡀⠀⠀⠀⠀⠀⠀⠙⢆⠙⢿⣿⣿⣿⣿⠂⠀⠀⡇]],
			[[⠀⡀⠀⠀⠀⠀⠀⠐⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠤⠤⠂⠀⠀⠀]],
			[[⢸⣷⣷⠿⠶⠶⠶⣤⣄⡀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠃]],
			[[⠘⣿⣿⣶⣶⣦⡆⠀⠀⠈⠙⢷⣦⠀⠀⠛⠀⠀⠀⠀⠀⠀⢀⣠⠇⠀]],
			[[⠀⠹⣿⣟⠁⠀⠈⠩⠀⡀⠀⠀⢠⠀⠀⠀⣤⣠⣷⣶⣿⣷⣿⡿⠃⠀]],
			[[⠀⠀⠘⢿⣀⠀⠀⠀⢐⠀⣀⣂⣄⣴⣾⣿⣿⣿⣿⣿⣿⣿⠏⠈⣤⠀]],
			[[⠀⠀⠀⠈⠻⢿⣶⣦⣼⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣻⣿⡼⠉⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⡿⢿⢿⣻⣟⣽⣳⡽⠓⠁⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣷⣱⣶⣶⠾⡿⠛⠋⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			"",
			"      Welcome to Neovim      ",
		}
		dashboard.section.header.opts = {
			position = "center",
			hl = "AlphaHeader",
		}

		-- 📂 Archivos recientes
		local function get_recent_files()
			local oldfiles = vim.v.oldfiles
			local recent = {}
			local max = 5
			local cwd = vim.fn.getcwd()

			for _, file in ipairs(oldfiles) do
				if vim.fn.filereadable(file) == 1 and vim.startswith(file, cwd) then
					local short = vim.fn.fnamemodify(file, ":~:.")
					table.insert(recent, "    " .. short)
					if #recent == max then
						break
					end
				end
			end

			return recent
		end

		dashboard.section.footer.val = get_recent_files()
		dashboard.section.footer.opts = {
			position = "center",
			hl = "AlphaRecent",
		}

		-- 🧼 Limpiar botones
		dashboard.section.buttons.val = {}

		-- 📏 Centrado y márgenes
		dashboard.opts.layout[1].val = 8
		dashboard.opts.opts.margin = 5

		-- 🚀 Inicializa
		alpha.setup(dashboard.opts)
	end,
}
