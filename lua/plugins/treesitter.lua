return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  branch = 'master',
  opts = {
    highlight = {
	enable = true,
    },
    indent = { enable = true },
    autotage = { enable = true },
    ensure_installed = {
	"lua",
	"rust",
	"javascript",
	"typescript",
	"vue",
	"html",
	"css",
	"scss"
    },
    auto_install = true,
  },
  config = function(_, opts)
      require('nvim-treesitter.config').setup(opts)

      require('nvim-treesitter').install(opts.ensure_installed)
  end
}
