return {
  "akinsho/bufferline.nvim",
  version = "*",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>q", "<cmd>bdelete<CR>", desc = "Close buffer" },
    { "<leader>bn", "<cmd>BufferLineCycleNext<CR>", desc = "Next buffer" },
    { "<leader>bp", "<cmd>BufferLineCyclePrev<CR>", desc = "Prev buffer" }
  },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        diagnostics = "nvim_lsp",
        separator_style = "thin", -- o "thin", "padded_slant", etc.
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true,
          },
        },
      },
    })

    -- Estética para combinar con catppuccin
    vim.opt.termguicolors = true
  end,
}
