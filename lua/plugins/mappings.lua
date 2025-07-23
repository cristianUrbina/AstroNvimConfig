return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          -- Neotest keybindings under <Leader>N
          ["<Leader>Nr"] = {
            function()
              require("neotest").run.run()
            end,
            desc = "Run nearest test",
          },
          ["<Leader>Nf"] = {
            function()
              require("neotest").run.run(vim.fn.expand("%"))
            end,
            desc = "Run all tests in file",
          },
          ["<Leader>Na"] = {
            function()
              require("neotest").run.run({ suite = true })
            end,
            desc = "Run all test suites",
          },
          ["<Leader>No"] = {
            function()
              require("neotest").output.open({ enter = true })
            end,
            desc = "Open test output",
          },
          ["<Leader>Ns"] = {
            function()
              require("neotest").summary.toggle()
            end,
            desc = "Toggle test summary",
          },
          ["<Leader>Nd"] = {
            function()
              require("neotest").run.run({ strategy = "dap" })
            end,
            desc = "Debug nearest test",
          },
          ["<Leader>N"] = { desc = "Neotest" }, -- which-key group label
        },
      },
    },
  },
}
