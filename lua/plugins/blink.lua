-- lua/plugins/blink.lua
return { -- override blink.cmp plugin
  "Saghen/blink.cmp",
  opts = {
    completion = {
      -- Your existing list configuration for preselection
      list = {
        selection = {
          preselect = true,
          auto_insert = true,
        },
      },

      -- Enable ghost text
      ghost_text = {
        enabled = true,
        -- You can customize the behavior further here if needed.
        -- The defaults are generally sensible to start with:
        show_with_selection = true,
        -- show_without_selection = false,
        -- show_with_menu = true,
        -- show_without_menu = true,
      },

      -- Optional: If you prefer the menu NOT to show automatically
      -- and only rely on ghost text until you manually trigger the menu (e.g., with <C-space>),
      -- you could uncomment the following lines:
      -- menu = {
      --   auto_show = false,
      -- },
    },

    keymap = {
      -- Your existing keymaps
      ["<Tab>"] = {
        "cancel",
        "snippet_forward",
        "fallback",
      },
      ["<S-Tab>"] = { "fallback" },
      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
    },
  },
}
