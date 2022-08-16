local status_ok, cokeline = pcall(require, "cokeline")
if not status_ok then
  return
end

local get_hex = require('cokeline/utils').get_hex

cokeline.setup {
  show_if_buffers_are_at_least = 1,
  buffers = {
    new_buffers_position = 'next',
  },
  default_hl = {
    fg = function(buffer)
      return
        buffer.is_focused
        and get_hex('Normal', 'fg')
        or get_hex('Comment', 'fg')
    end,
    bg = 'NONE',
  },
  sidebar = {
    filetype = 'NvimTree',
    components = {
      {
        text = '  File Explorer',
        fg = get_hex('String', 'fg'),
        style = 'bold'
      },
    }
  },
  components = {
    {
      text = function(buffer) return ' ' .. buffer.devicon.icon end,
      fg = function(buffer) return buffer.devicon.color end,
    },
    {
      text = function(buffer) return buffer.filename .. ' ' end,
    },
    {
      text = function(buffer) return buffer.is_modified and '●' or ' ' end,
      fg = function(buffer) return buffer.is_modified and get_hex('String', 'fg') or nil end,
    },
  }
}
