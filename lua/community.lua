-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder

  -- import/override with your plugins folder
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" },

  --LANGUAGE PACKS
  { import = "astrocommunity.pack.cpp" },

  { import = "astrocommunity.pack.cmake" },

  { import = "astrocommunity.pack.html-css" },

  { import = "astrocommunity.pack.typescript" },

  { import = "astrocommunity.pack.vue" },

  -- { import = "astrocommunity.pack.java" },
  --
  -- { import = "astrocommunity.pack.cpp" },
  --
  --   --THEMES
  { import = "astrocommunity.colorscheme.poimandres-nvim" },

  { import = "astrocommunity.colorscheme.lackluster-nvim" },

  { import = "astrocommunity.colorscheme.github-nvim-theme" },

  { import = "astrocommunity.colorscheme.bluloco-nvim" },

  { import = "astrocommunity.colorscheme.iceberg-vim" },

  { import = "astrocommunity.colorscheme.vim-moonfly-colors" },

  { import = "astrocommunity.colorscheme.vim-nightfly-colors" },

  { import = "astrocommunity.colorscheme.nord-nvim" },

  --DEV TOOLS
  { import = "astrocommunity.code-runner.compiler-nvim" },

  { import = "astrocommunity.utility.live-server-nvim" },

  { import = "astrocommunity.lsp.lspsaga-nvim" },

  { import = "astrocommunity.editing-support.vim-visual-multi" },
}
