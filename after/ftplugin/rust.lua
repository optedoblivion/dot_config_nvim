-- Rust keybindings

local bufnr = vim.api.nvim_get_current_buf()

-- Code
vim.keymap.set("n", "<leader>a", function()
  vim.cmd.RustLsp("codeAction") -- supports rust-analyzer's grouping
  -- or vim.lsp.buf.codeAction() if you don't want grouping.
end, { silent = true, buffer = bufnr })

vim.keymap.set("n", "<leader>ha", function()
  vim.cmd.RustLsp({ "hover", "actions" })
end, { silent = true, buffer = bufnr })

-- Build/Run
vim.keymap.set("n", "<F4>", function()
  vim.cmd.RustLsp("runnables")
end, { silent = true, buffer = bufnr })

vim.keymap.set("n", "<F5>", function()
  vim.cmd.RustLsp("run")
end, { silent = true, buffer = bufnr })

vim.keymap.set("n", "<F6>", function()
  vim.cmd.RustLsp("testables")
end, { silent = true, buffer = bufnr })

-- Debugging
-- LSP
vim.keymap.set("n", "<F7>", function()
  vim.cmd.RustLsp("debug")
end, { silent = true, buffer = bufnr })

vim.keymap.set("n", "<F8>", function()
  vim.cmd.RustLsp("debuggables")
end, { silent = true, buffer = bufnr })
--vim.keymap.set("n", "<S-F8>", function()
--  vim.cmd.RustLsp({ "debuggables", bang = true })
--end, { silent = true, buffer = bufnr })

--vim.keymap.set("n", "<leader>hr", function()
--  vim.cmd.RustLsp({ "hover", "range" })
--end, { silent = true, buffer = bufnr })

-- DAP
vim.keymap.set("n", "<F9>", function()
  require("dap").step_out({})
end, { silent = true, buffer = bufnr })

vim.keymap.set("n", "<F10>", function()
  require("dap").step_into({})
end, { silent = true, buffer = bufnr })

vim.keymap.set("n", "<F11>", function()
  require("dap").step_over({})
end, { silent = true, buffer = bufnr })

vim.keymap.set("n", "<F12>", function()
  require("dap").continue({})
end, { silent = true, buffer = bufnr })

vim.keymap.set("n", "<C-b>", function()
  require("dap").toggle_breakpoint()
end, { silent = true, buffer = bufnr })
