local status_ok, cokeline = pcall(require, "cokeline")
if not status_ok then
  return
end

cokeline.setup {
  show_if_buffers_are_at_least = 1,
  default_hl = {
    focused = {
      fg = '#d9e0ee',
      bg = 'NONE',
    },
    unfocused = {
      fg = '#988ba2',
      bg = 'NONE',
    }
  },
  rendering = {
    left_sidebar = {
      filetype = 'NvimTree',
      components = {
        {
          text = '  NvimTree',
          hl = {
            fg = '#fae3b0',
            style = 'bold'
          }
        },
      }
    },
  },
  components = {
    {
      text = function(buffer) return ' ' .. buffer.devicon.icon end,
      hl = {
        fg = function(buffer) return buffer.devicon.color end,
      },
    },
    {
      text = function(buffer) return buffer.filename .. ' ' end,
    },
    {
      text = function(buffer) return buffer.is_modified and '●' or ' ' end,
      hl = {
        fg = function(buffer) return buffer.is_modified and '#abe9b3' or nil end,
      },
    },
  }
}
