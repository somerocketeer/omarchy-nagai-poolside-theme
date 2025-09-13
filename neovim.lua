-- LazyVim plugin spec: inject Nagai Poolside palette into Tokyonight
-- Place this file under LazyVim's plugin specs (Omarchy will copy/link when applying the theme)
return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      style = "night",
      transparent = false,
      on_colors = function(c)
        -- Core (Nagai Poolside)
        c.bg           = "#0F1B22"
        c.bg_dark      = "#0B141A"
        c.bg_highlight = "#152B34"
        c.fg           = "#E6F1F4"
        c.fg_dark      = "#C7DDE3"
        c.comment      = "#88A6AE" -- dim text / gutters (raised for readability)

        -- Accents / semantic
        c.magenta = "#58AFD8"
        c.cyan    = "#3A9FB7"
        c.blue    = "#45A1DF"
        c.red     = "#FF6B6B"
        c.green   = "#7CA348"
        c.yellow  = "#EED59A"

        -- Optional terminal palette (helps some integrations)
        c.terminal_black   = "#0B141A"
        c.terminal_red     = "#FF6B6B"
        c.terminal_green   = "#7CA348"
        c.terminal_yellow  = "#F4E2B7"
        c.terminal_blue    = "#58AFD8"
        c.terminal_magenta = "#58AFD8"
        c.terminal_cyan    = "#5EC2D6"
        c.terminal_white   = "#E6F1F4"
      end,
      on_highlights = function(hl, c)
        -- Selection and cursor cues
        hl.Visual        = { bg = "#243C47" }
        hl.CursorLine    = { bg = c.bg_highlight }
        hl.CursorLineNr  = { fg = c.magenta, bold = true }
        hl.LineNr        = { fg = "#6B9099" }

        -- Floating windows and borders
        hl.NormalFloat   = { bg = c.bg_highlight, fg = c.fg }
        hl.FloatBorder   = { fg = c.blue, bg = c.bg_highlight }

        -- Popup menu
        hl.Pmenu         = { bg = c.bg_highlight, fg = c.fg }
        hl.PmenuSel      = { bg = "#243C47", fg = c.fg, bold = true }

        -- Telescope
        hl.TelescopeBorder = { fg = c.blue, bg = c.bg_highlight }
        hl.TelescopeTitle  = { fg = c.magenta, bold = true }

        -- Punctuation (tinted for scanability)
        hl.Delimiter = { fg = "#88A6AE" }
        hl["@punctuation.delimiter"] = { fg = "#88A6AE" }
        hl["@punctuation.bracket"]   = { fg = "#88A6AE" }
        hl["@punctuation.special"]   = { fg = "#88A6AE" }

        -- Diagnostics
        hl.DiagnosticError = { fg = c.red }
        hl.DiagnosticWarn  = { fg = c.yellow }
        hl.DiagnosticInfo  = { fg = c.blue }
        hl.DiagnosticHint  = { fg = c.cyan }
        hl.DiagnosticVirtualTextError = { fg = c.red, bg = "NONE" }
        hl.DiagnosticVirtualTextWarn  = { fg = c.yellow, bg = "NONE" }
        hl.DiagnosticVirtualTextInfo  = { fg = c.blue, bg = "NONE" }
        hl.DiagnosticVirtualTextHint  = { fg = c.cyan, bg = "NONE" }

        -- Git signs (gitsigns.nvim)
        hl.GitSignsAdd    = { fg = c.green }
        hl.GitSignsChange = { fg = c.blue }
        hl.GitSignsDelete = { fg = c.red }

        -- Diffs
        hl.DiffAdd    = { fg = c.green, bg = "NONE" }
        hl.DiffChange = { fg = c.blue,  bg = "NONE" }
        hl.DiffDelete = { fg = c.red,   bg = "NONE" }
        hl.DiffText   = { fg = c.blue,  bg = "NONE" }

        -- Which-Key (LazyVim menu)
        hl.WhichKey         = { fg = c.magenta, bold = true }
        hl.WhichKeyGroup    = { fg = c.magenta }
        hl.WhichKeySeparator= { fg = "#88A6AE" }
        hl.WhichKeyDesc     = { fg = c.fg }
        hl.WhichKeyValue    = { fg = c.blue }

        -- Lazy.nvim UI
        hl.LazyButtonActive = { fg = c.bg, bg = c.magenta, bold = true }
        hl.LazyH1           = { fg = c.bg, bg = c.magenta, bold = true }
        hl.LazyProgressDone = { fg = c.magenta }

        -- Alpha (LazyVim dashboard)
        hl.AlphaHeader     = { fg = c.magenta, bold = true }
        hl.AlphaFooter     = { fg = "#88A6AE" }
        hl.AlphaShortcut   = { fg = c.magenta, bold = true }
        hl.AlphaButton     = { fg = c.blue }
        hl.AlphaButtons    = { fg = c.blue }
        hl.AlphaButtonText = { fg = c.blue }

        -- dashboard-nvim (fallback)
        hl.DashboardCenter = { fg = c.blue }
        hl.DashboardDesc   = { fg = c.blue }

        -- mini.starter (fallback)
        hl.MiniStarterItem    = { fg = c.blue }
        hl.MiniStarterSection = { fg = c.blue }

        -- Generic fallbacks some dashboards link to
        hl.Title   = { fg = c.magenta, bold = true }
        hl.Special = { fg = c.blue }

        -- Statusline/tabline accents (optional examples)
        hl.StatusLine     = { bg = c.bg_highlight, fg = c.fg }
        hl.StatusLineNC   = { bg = c.bg_dark,      fg = c.comment }
        hl.TabLineSel     = { bg = c.bg_highlight, fg = c.magenta, bold = true }
      end,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}
