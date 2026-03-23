return {
  {
    'sindrets/diffview.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewToggleFiles', 'DiffviewFocusFiles', 'DiffviewFileHistory' },
    opts = {
      enhanced_diff_hl = true,
      view = {
        default = {
          layout = 'diff2_horizontal',
          winbar_info = false,
        },
        merge_tool = {
          layout = 'diff3_horizontal',
          disable_diagnostics = true,
        },
        file_history = {
          layout = 'diff2_horizontal',
        },
      },
      file_panel = {
        listing_style = 'tree',
        win_config = {
          position = 'left',
          width = 35,
        },
      },
    },
  },
}
