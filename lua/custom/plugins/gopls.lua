-- This is inactive, but it can be used for reference

return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  opts = {
    servers = {
      gopls = {}, -- your gopls specific options here
    },
    -- Example keymaps setup (often in a separate `on_attach` function)
    setup = {
      gopls = function()
        -- set up keymaps here, e.g.,
        vim.api.nvim_create_autocmd('LspAttach', {
          group = vim.api.nvim_create_augroup('GoLspAttach', { clear = true }),
          callback = function(args)
            local bufnr = args.buf
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr, desc = 'Go to Definition' })
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = bufnr, desc = 'Go to Implementation' })
            -- ... add other keymaps
          end,
        })
      end,
    },
  },
}
