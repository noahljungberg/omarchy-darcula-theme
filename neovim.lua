return {
  {
    "briones-gabriel/darcula-solid.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      local function apply()
        local set = vim.api.nvim_set_hl
        set(0, "Directory", { fg = "#FFD760" })
        set(0, "WinBar", { fg = "#FFD760", bg = "#3C3F41" })
        set(0, "WinBarNC", { fg = "#6C707E", bg = "#2B2B2B" })
        set(0, "StatusLine", { fg = "#A9B7C6", bg = "#3C3F41" })
        set(0, "StatusLineNC", { fg = "#6C707E", bg = "#2B2B2B" })
        set(0, "NavicText", { fg = "#A9B7C6", bg = "#3C3F41" })
        set(0, "NavicSeparator", { fg = "#515A6B", bg = "#3C3F41" })
        set(0, "NormalFloat", { fg = "#A9B7C6", bg = "#313335" })
        set(0, "FloatBorder", { fg = "#515A6B", bg = "#313335" })
        for _, mode in ipairs({ "normal", "insert", "visual", "replace", "command", "inactive" }) do
          set(0, "lualine_c_" .. mode, { fg = "#A9B7C6", bg = "#3C3F41" })
        end
      end

      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "darcula-solid",
        callback = apply,
      })

      if vim.g.colors_name == "darcula-solid" then
        apply()
      end
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local Util = require("lazyvim.util")
      local icons = require("lazyvim.config").icons
      opts.sections.lualine_c = {
        Util.lualine.root_dir(),
        {
          "diagnostics",
          symbols = {
            error = icons.diagnostics.Error,
            warn = icons.diagnostics.Warn,
            info = icons.diagnostics.Info,
            hint = icons.diagnostics.Hint,
          },
        },
        { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
        { Util.lualine.pretty_path({ directory_hl = "Directory", filename_hl = "Directory" }) },
      }
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "darcula-solid",
    },
  },
}
