-- \~/.config/nvim/lua/plugins/codeium.lua
return {
  'Exafunction/codeium.vim',
  event = 'BufEnter',
  config = function ()
      vim.g.codeium_no_map_tab = 1
      -- remapping to Ctrl+g works but other key combinations don't
      vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
  end
}
