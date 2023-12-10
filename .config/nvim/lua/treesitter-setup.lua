-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter`
-- Defer Treesitter setup after first render to improve startup time of 'nvim {filename}'
vim.defer_fn(function()
  require('nvim-treesitter.configs').setup {
    -- Add languages to be installed here that you want installed for treesitter
    ensure_installed = { 'lua' },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
    auto_install = true,

    -- List of parsers to ignore installing (or "all")
    ignore_install = { },

    modules = { },

    highlight = { enable = true },
  }
end, 0)

-- vim: ts=2 sts=2 sw=2 et

