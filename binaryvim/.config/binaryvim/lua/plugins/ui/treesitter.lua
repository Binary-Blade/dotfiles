return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'c',
        'html',
        'json',
        'lua',
        'vim',
        'vimdoc',
        'javascript',
        'html',
        'sql',
        'vue',
        'typescript',
        'php',
        'tsx',
        'python',
        'git_config',
        'markdown',
        'markdown_inline',
        'xml',
        'http',
        'json',
        'graphql',
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }

    -- NOTE: DONE 29/02 15h59
    -- There are additional nvim-treesitter modules that you can use to interact
    -- with nvim-treesitter. You should go explore a few and see what interests you:
    --
    --    - Incremental selection: Included, see :help nvim-treesitter-incremental-selection-mod
    --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
    --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  end,
}
