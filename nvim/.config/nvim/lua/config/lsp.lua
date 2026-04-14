local capabilities = require("cmp_nvim_lsp").default_capabilities()
local verible_flags = "--rules=-always-comb,-parameter-name-style"

vim.lsp.config("verible", {
  cmd = { "verible-verilog-ls", verible_flags },
  capabilities = capabilities,
  filetypes = { "systemverilog", "verilog" },
  root_markers = { ".git" },
})

vim.lsp.config("svlangserver", {
  cmd = { "svlangserver" },
  filetypes = { "verilog", "systemverilog" },
  capabilities = capabilities,
  root_markers = { ".svlangserver", ".git" },
  -- -@type lspconfig.settings.svlangserver
  settings = {
    systemverilog = {
      includeIndexing = { "*.{v,vh,sv,svh}", "**/*.{v,vh,sv,svh}" },
    },
  },
  on_attach = function(client, bufnr)
    vim.api.nvim_buf_create_user_command(bufnr, "LspSvlangserverBuildIndex", function()
      client:exec_cmd({
        title = "Build Index",
        command = "systemverilog.build_index",
      }, { bufnr = bufnr })
    end, {
      desc = "Instructs language server to rerun indexing",
    })
    vim.api.nvim_buf_create_user_command(bufnr, "LspSvlangserverReportHierarchy", function()
      client:exec_cmd({
        title = "Build Index",
        command = "systemverilog.build_index",
        arguments = { vim.fn.expand("<cword>") },
      }, { bufnr = bufnr })
    end, {
      desc = "Generates hierarchy for the given module",
    })
  end,
})
