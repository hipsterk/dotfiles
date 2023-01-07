local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

local colors = {
  blue   = '#96cdfb',
  cyan   = '#89dceb',
  black  = '#1e1e2e',
  white  = '#d9e0ee',
  red    = '#f28fad',
  violet = '#ddb6f2',
  grey   = '#988ba2',
  green  = '#abe9b3',
  pink   = '#f5c2e7',
  yellow = '#fae3b0',
}

local mode = {
	"mode",
	fmt = function(str)
		if str == "NORMAL" then
			return "NORMAL "
		end
		if str == "INSERT" then
			return "INSERT "
		end
		if str == "COMMAND" then
			return "COMMAND"
		end
		if str == "VISUAL" then
			return "VISUAL "
		end
		if str == "V-LINE" then
			return "V-LINE "
		end
		if str == "V-BLOCK" then
			return "V-BLOCK"
		end
		if str == "REPLACE" then
			return "REPLACE"
		end
		return str
	end,
}

local catppuccin_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.blue, gui = 'bold' },
    b = { fg = colors.blue },
  },
  insert = {
    a = { fg = colors.black, bg = colors.green, gui = 'bold' },
    b = { fg = colors.green },
  },
  visual = {
    a = { fg = colors.black,  bg = colors.violet, gui = 'bold' },
    b = { fg = colors.violet },
  },
  replace = {
    a = { fg = colors.black, bg = colors.yellow, gui = 'bold'},
    b = { fg = colors.yellow },
  },
  command = {
    a = { fg = colors.black, bg = colors.red, gui = 'bold'},
    b = { fg = colors.red },
  },
  terminal = {
    a = { fg = colors.green, gui = 'bold' },
    b = { fg = colors.green },
    x = { fg = colors.green },
  }
}

lualine.setup ({
  options = {
    theme = catppuccin_theme;
    icons_enabled = true;
    component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    section_separators = { left = '', right = '' },
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {'branch', 'diff'},
    lualine_c = {'diagnostics'},
    lualine_x = {'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
})
