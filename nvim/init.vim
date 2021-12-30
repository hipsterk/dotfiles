" syntax highlighting
syntax enable
" Improve search
set incsearch
set hlsearch
set showmatch
" Show 5 lines around cursor
set scrolloff=5
colorscheme iterm2
hi Normal guibg=NONE ctermbg=NONE
set guicursor=a:block-blinkon100
highlight Comment cterm=italic
highlight Underlined cterm=underline
set t_Co=256

" vim-plug
call plug#begin('~/.config/nvim/plug')

  " Plug 'neovim/nvim-lspconfig'
  " Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    Plug 'ap/vim-css-color'

" Initialize plugin system
call plug#end()

lua << EOF
require'nvim-treesitter.configs'.setup { ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages highlight = { enable = true, -- false will disable the whole extension },
}
EOF

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
  },
}
EOF

augroup NVIM_TREESITTER
    autocmd BufWritePre *.js TSBufEnable javascript
    autocmd BufWritePre *.ts TSBufEnable typescript
    autocmd BufWritePre *.json TSBufEnable json
    autocmd BufWritePre *.c TSBufEnable c
    autocmd BufWritePre *.h TSBufEnable c
augroup END
