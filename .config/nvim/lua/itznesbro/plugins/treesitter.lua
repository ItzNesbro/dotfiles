return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = { "javascript", "typescript", "tsx", "lua", "fish"},
        sync_install = false,
        auto_install = true,
        highlight = {
          -- `false` will disable the whole extension
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      }
    end
  },
}
