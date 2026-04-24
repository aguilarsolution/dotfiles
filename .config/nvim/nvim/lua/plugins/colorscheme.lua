-- Estos es un tema configurado aparte
return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    theme = "dragon", -- dragon | wave | lotus
    background = {
      dark = "dragon",
      light = "lotus",
    },
    styles = {
      comments = { italic = true },
      keywords = { bold = false },
      functions = {},
      variables = {},
      sidebars = "transparent",
      floats = "transparent",
    },
    colors = {
      theme = {
        all = {
          ui = {
            bg_gutter = "none",
          },
        },
      },
    },
    overrides = function(colors)
      local theme = colors.theme
      return {
        -- Breadcrumbs y menús flotantes transparentes
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
        FloatTitle = { bg = "none" },

        -- Asegurar transparencia en la línea de números
        NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

        -- Popular plugins that open floats will link to NormalFloat by default;
        -- set their background accordingly if you wish to keep them dark and borderless
        LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
      }
    end,
    transparent = true,
    dimInactive = false,
  },
}
