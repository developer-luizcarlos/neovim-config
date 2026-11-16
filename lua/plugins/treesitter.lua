return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
      require('nvim-treesitter').install({
          'rust',
          'lua',
          'typescript',
          'python'
      })
  end
}
