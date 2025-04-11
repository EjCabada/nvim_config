return {

  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      -- Normal Mode
      -- Normal Mode
      n = {
        -- Dev Tools (formerly Compiler Options)
        ["<Leader>z"] = { desc = "🛠️ Dev tools" }, -- Added icon and changed description
        ["<Leader>zo"] = { "<cmd>CompilerOpen<cr>", desc = "Open Compiler" },
        ["<Leader>zr"] = {
          function()
            vim.cmd "CompilerStop"
            vim.cmd "CompilerRedo"
          end,
          desc = "Redo Last Compile",
        },
        ["<Leader>zt"] = { "<cmd>CompilerToggleResults<cr>", desc = "Toggle Compiler Results" },
        ["z-"] = { "<cmd>CompilerKill<cr>", desc = "Kill Compiler Job" },
        -- Live Server Commands
        ["<Leader>zs"] = { "<cmd>LiveServerStart<cr>", desc = "Start Live Server" },
        ["<Leader>zx"] = { "<cmd>LiveServerStop<cr>", desc = "Stop Live Server" },
        -- Buffer Navigation
        ["<Tab>"] = { "<cmd>bnext<cr>", desc = "Go to next buffer" },
        ["<S-Tab>"] = { "<cmd>bprevious<cr>", desc = "Go to previous buffer" },
      },
      -- Terminal Mode
      t = {
        -- Disable Esc in terminal mode (optional, from the docs)
        -- ["<esc>"] = false,
      },
      i = {
        -- ["<C-j>"] = { "<C-o>j", desc = "Move down in insert mode" },
        -- ["<C-k>"] = { "<C-o>k", desc = "Move up in insert mode" },
        -- ["<C-h>"] = { "<C-o>h", desc = "Move left in insert mode" },
        -- ["<C-l>"] = { "<C-o>l", desc = "Move right in insert mode" },

        ["<C-;>"] = { "<C-o>$;", desc = "Jump to end" },
        ["<C-o>"] = { "<C-o>o", desc = "New line below and insert" },
        ["<C-O>"] = { "<C-o>O", desc = "New line above and insert" },
        ["<C-/>"] = {
          function()
            vim.notify("Ctrl+/ new version!", vim.log.levels.INFO) -- Keep for debugging
            -- Execute 'gcc' directly as a normal mode command
            vim.cmd.normal "gcc"
            -- Re-enter insert mode at the previous position using feedkeys
            -- vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("gi", true, false, true), "n", false)
          end,
          desc = "Toggle comment line (vim.cmd)", -- Updated description
        },
      },
    },
  },
}
