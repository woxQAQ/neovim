return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<c-\>]],
      hide_number = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      persist_size = false,
      direction = "float",
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "single",
        winblend = 1,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
      winbar = {
        enable = false,
        name_formatter = function(term)
          return term.name
        end
      }
    })
  end,
}
