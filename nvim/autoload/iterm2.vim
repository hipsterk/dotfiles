" [iterm2.vim](https://github.com/joshdick/iterm2.vim/)

let s:overrides = get(g:, "iterm2_color_overrides", {})

let s:colors = {
      \ "red": get(s:overrides, "red", { "gui": "#FF6D67", "cterm": "1", "cterm16": "1" }),
      \ "dark_red": get(s:overrides, "dark_red", { "gui": "#C91B00", "cterm": "9", "cterm16": "9" }),
      \ "green": get(s:overrides, "green", { "gui": "#00C200", "cterm": "2", "cterm16": "2" }),
      \ "yellow": get(s:overrides, "yellow", { "gui": "#FEFB67", "cterm": "11", "cterm16": "3" }),
      \ "dark_yellow": get(s:overrides, "dark_yellow", { "gui": "#C7C400", "cterm": "3", "cterm16": "11" }),
      \ "blue": get(s:overrides, "blue", { "gui": "#0225C7", "cterm": "4", "cterm16": "4" }),
      \ "purple": get(s:overrides, "purple", { "gui": "#C920C7", "cterm": "5", "cterm16": "5" }),
      \ "cyan": get(s:overrides, "cyan", { "gui": "#005C57", "cterm": "6", "cterm16": "6" }),
      \ "white": get(s:overrides, "white", { "gui": "#C7C7C7", "cterm": "7", "cterm16": "7" }),
      \ "black": get(s:overrides, "black", { "gui": "#000000", "cterm": "0", "cterm16": "0" }),
      \ "visual_black": get(s:overrides, "visual_black", { "gui": "NONE", "cterm": "NONE", "cterm16": "0" }),
      \ "comment_grey": get(s:overrides, "comment_grey", { "gui": "676767", "cterm": "8", "cterm16": "15" }),
      \ "gutter_fg_grey": get(s:overrides, "gutter_fg_grey", { "gui": "#4B5263", "cterm": "1", "cterm16": "15" }),
      \ "cursor_grey": get(s:overrides, "cursor_grey", { "gui": "#C7C7C7", "cterm": "NONE", "cterm16": "8" }),
      \ "visual_grey": get(s:overrides, "visual_grey", { "gui": "#676767", "cterm": "3", "cterm16": "15" }),
      \ "menu_grey": get(s:overrides, "menu_grey", { "gui": "#676767", "cterm": "5", "cterm16": "8" }),
      \ "special_grey": get(s:overrides, "special_grey", { "gui": "#676767", "cterm": "4", "cterm16": "15" }),
      \ "vertsplit": get(s:overrides, "vertsplit", { "gui": "#676767", "cterm": "6", "cterm16": "15" }),
      \}

function! iterm2#GetColors()
  return s:colors
endfunction
