return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons", 
  },
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Toggle File Explorer" },
  },
  config = function()
    require("nvim-tree").setup({
      disable_netrw = true,
      hijack_netrw = true,
      view = {
        width = 30,
        side = "left",
        preserve_window_proportions = true,
      },
      renderer = {
        highlight_git = true,
        highlight_opened_files = "name",
        indent_markers = { enable = true },
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      filters = {
        dotfiles = false,
        custom = { ".DS_Store" },
      },
      git = {
        enable = true,
        ignore = false,
      },
      actions = {
        open_file = {
          resize_window = true,
        },
      },
    })

    
    vim.cmd([[ highlight NvimTreeNormal guibg=NONE ctermbg=NONE ]])
  end,
}
