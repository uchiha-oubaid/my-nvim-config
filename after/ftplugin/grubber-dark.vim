" ============================================
" Complete Neovim Configuration
" Gruber Dark Theme - Set as DEFAULT for ALL files
" ============================================

" Install vim-plug if not installed (plugin manager)
let data_dir = stdpath('data') . '/site'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugin configuration
call plug#begin(stdpath('data') . '/plugged')

" Gruber Dark Theme (will be set as DEFAULT)
Plug 'gruber-darker/nvim', { 'as': 'gruber-darker' }

" Enhanced syntax highlighting for ALL languages
Plug 'sheerun/vim-polyglot'           " Better syntax for 100+ languages
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " Better highlighting

" Optional: Language-specific improvements
Plug 'vim-scripts/c.vim'               " C/C++ improvements
Plug 'octol/vim-cpp-enhanced-highlight' " Enhanced C++

call plug#end()

" ============================================
" MAKE GRUBER DARK THE DEFAULT THEME
" ============================================
" Basic settings required for Gruber Dark
syntax on
filetype plugin indent on
set termguicolors     " Enable true colors for ALL files
set background=dark   " Dark background for Gruber Dark

" Set Gruber Dark as the DEFAULT colorscheme
try
    colorscheme gruber-dark
catch
    " Fallback if theme fails to load
    colorscheme default
    echo "Gruber Dark theme not found, using default"
endtry

" FORCE Gruber Dark to always be the default (prevents other plugins from changing it)
autocmd VimEnter * colorscheme gruber-dark
autocmd ColorScheme * if exists('g:colors_name') && g:colors_name != 'gruber-dark' | colorscheme gruber-dark | endif

" Ensure theme applies to ALL buffers
autocmd ColorScheme * highlight Normal guibg=#1C1A19

" ============================================
" Global Syntax Enhancements for ALL File Types
" ============================================

" 1. Better visibility for common elements in ALL files
augroup global_syntax_enhancements
    autocmd!
    " Apply to EVERY file type
    autocmd BufEnter * call s:global_highlighting()
augroup END

function! s:global_highlighting()
    " These apply to ALL files regardless of type
    
    " Better comment visibility
    hi Comment guifg=#655C5A ctermfg=241 gui=italic
    
    " Better string visibility
    hi String guifg=#95A99F ctermfg=108
    
    " Better number visibility
    hi Number guifg=#C26B6B ctermfg=167
    hi Float guifg=#C26B6B ctermfg=167
    
    " Better keyword visibility
    hi Keyword guifg=#8BA5B0 ctermfg=109 gui=bold
    hi Statement gui=bold
    
    " Better function visibility
    hi Function guifg=#F4C273 ctermfg=215 gui=bold
    
    " Better type visibility
    hi Type guifg=#C2A68F ctermfg=173 gui=bold
    
    " Better constants
    hi Constant guifg=#C26B6B ctermfg=167
    
    " Better operators
    hi Operator guifg=#8BA5B0 ctermfg=109
    
    " Better preprocessor/directives
    hi PreProc guifg=#8BA5B0 ctermfg=109 gui=bold
    
    " Better special characters
    hi Special guifg=#F4C273 ctermfg=215
    
    " Better identifiers
    hi Identifier guifg=#D9C8B0 ctermfg=187
    
    " TODO/FIXME highlighting in ALL files
    hi Todo guibg=#F4C273 guifg=#1C1A19 ctermbg=215 ctermfg=234 gui=bold
    
    " Line numbers
    hi LineNr guifg=#524847 ctermfg=239
    hi CursorLineNr guifg=#F4C273 ctermfg=215 gui=bold
    
    " Cursor line
    hi CursorLine ctermbg=235 guibg=#2A2423
    hi CursorColumn ctermbg=235 guibg=#2A2423
    
    " Visual selection
    hi Visual guibg=#3D3635 ctermbg=237
    
    " Search highlighting
    hi Search guibg=#F4C273 guifg=#1C1A19 ctermbg=215 ctermfg=234
    hi IncSearch guibg=#95A99F guifg=#1C1A19 ctermbg=108 ctermfg=234
    
    " Match parentheses
    hi MatchParen guibg=#524847 guifg=#F4C273 ctermbg=239 ctermfg=215 gui=bold
    
    " Status line
    hi StatusLine guifg=#F4C273 guibg=#2A2423 ctermfg=215 ctermbg=235 gui=bold
    hi StatusLineNC guifg=#524847 guibg=#1C1A19 ctermfg=239 ctermbg=234
    
    " Tab line
    hi TabLine guifg=#524847 guibg=#1C1A19 ctermfg=239 ctermbg=234
    hi TabLineSel guifg=#F4C273 guibg=#2A2423 ctermfg=215 ctermbg=235 gui=bold
    hi TabLineFill guifg=#524847 guibg=#1C1A19 ctermfg=239 ctermbg=234
    
    " Vert split
    hi VertSplit guifg=#524847 guibg=#1C1A19 ctermfg=239 ctermbg=234
    
    " Fold column
    hi Folded guibg=#1C1A19 guifg=#524847 ctermbg=234 ctermfg=239
    hi FoldColumn guibg=#1C1A19 guifg=#524847 ctermbg=234 ctermfg=239
    
    " Pmenu (autocomplete)
    hi Pmenu guibg=#2A2423 guifg=#D9C8B0 ctermbg=235 ctermfg=187
    hi PmenuSel guibg=#3D3635 guifg=#F4C273 ctermbg=237 ctermfg=215
    hi PmenuSbar guibg=#1C1A19 ctermbg=234
    hi PmenuThumb guibg=#524847 ctermbg=239
    
    " Spelling
    hi SpellBad guisp=#C26B6B gui=undercurl cterm=underline
    hi SpellCap guisp=#F4C273 gui=undercurl cterm=underline
    hi SpellLocal guisp=#95A99F gui=undercurl cterm=underline
    hi SpellRare guisp=#C2A68F gui=undercurl cterm=underline
    
    " Diff colors
    hi DiffAdd guibg=#2A4C3E ctermbg=23
    hi DiffDelete guibg=#4C2A2A ctermbg=52
    hi DiffChange guibg=#3D3635 ctermbg=237
    hi DiffText guibg=#524847 ctermbg=239 gui=bold
    
    " Error messages
    hi ErrorMsg guibg=#C26B6B guifg=#1C1A19 ctermbg=167 ctermfg=234
    hi Error guibg=#C26B6B guifg=#1C1A19 ctermbg=167 ctermfg=234
    hi WarningMsg guifg=#F4C273 ctermfg=215
endfunction

" ============================================
" Global File Detection (ALL extensions)
" ============================================
augroup global_file_detection
    autocmd!
    " C/C++ files
    autocmd BufRead,BufNewFile *.c,*.h,*.cpp,*.hpp,*.cc,*.hh,*.cxx,*.hxx,*.ino,*.ipp set filetype=cpp
    " Python files
    autocmd BufRead,BufNewFile *.py,*.pyw,*.pyc set filetype=python
    " JavaScript/TypeScript
    autocmd BufRead,BufNewFile *.js,*.jsx,*.mjs,*.cjs set filetype=javascript
    autocmd BufRead,BufNewFile *.ts,*.tsx set filetype=typescript
    " HTML/CSS
    autocmd BufRead,BufNewFile *.html,*.htm,*.xhtml set filetype=html
    autocmd BufRead,BufNewFile *.css,*.scss,*.sass,*.less set filetype=css
    " JSON/YAML
    autocmd BufRead,BufNewFile *.json,*.jsonc set filetype=json
    autocmd BufRead,BufNewFile *.yaml,*.yml set filetype=yaml
    " Markdown
    autocmd BufRead,BufNewFile *.md,*.markdown set filetype=markdown
    " Shell scripts
    autocmd BufRead,BufNewFile *.sh,*.bash,*.zsh set filetype=sh
    " Lua
    autocmd BufRead,BufNewFile *.lua set filetype=lua
    " Ruby
    autocmd BufRead,BufNewFile *.rb,*.erb set filetype=ruby
    " Go
    autocmd BufRead,BufNewFile *.go set filetype=go
    " Rust
    autocmd BufRead,BufNewFile *.rs set filetype=rust
    " Java
    autocmd BufRead,BufNewFile *.java set filetype=java
    " Makefiles
    autocmd BufRead,BufNewFile Makefile,*.mk set filetype=make
augroup END

" ============================================
" C/C++ Specific Enhancements (Global but only for C/C++)
" ============================================
augroup cpp_specific_global
    autocmd!
    autocmd FileType c,cpp call s:cpp_enhancements()
augroup END

function! s:cpp_enhancements()
    " C++ specific keywords (only active for C/C++ files)
    syn keyword cppKeyword        constexpr noexcept decltype static_assert
    syn keyword cppKeyword        override final nullptr consteval constinit
    syn keyword cppKeyword        co_await co_yield co_return concept requires
    syn keyword cppAccess         public private protected
    syn keyword cppType           std string vector map unordered_map set
    syn keyword cppType           unique_ptr shared_ptr weak_ptr optional variant
    
    " Function definitions
    syn match cppFuncDef          "^\s*\zs\w\+\ze\s*("
    syn match cppMethod           "\w\+\ze::"
    
    " Template highlighting
    syn match cppTemplate         "<[^<>]*>" contains=cppTemplateNested
    syn match cppTemplateNested   "<[^<>]*>" contained
    
    " Preprocessor directives
    syn match cppPreProc          "^#\s*\(include\|define\|if\|ifdef\|pragma\)\>"
    
    " Link C++ specific groups
    hi def link cppKeyword        Statement
    hi def link cppAccess         Statement
    hi def link cppType           Type
    hi def link cppFuncDef        Function
    hi def link cppMethod         Type
    hi def link cppTemplate       Type
    hi def link cppPreProc        PreProc
endfunction

" ============================================
" Treesitter for ALL files (if available)
" ============================================
lua << EOF
-- Configure treesitter for ALL supported file types
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "python", "javascript", "typescript", "html", "css", "lua", "vim", "bash", "markdown", "json", "yaml", "go", "rust", "java" },
  auto_install = true,
  highlight = {
    enable = true,  -- Enable highlighting for ALL files
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,  -- Enable indentation for ALL files
  },
}
EOF

" ============================================
" Global UI Settings
" ============================================
set number                " Show line numbers globally
set relativenumber        " Relative line numbers
set cursorline           " Highlight current line
set cursorcolumn         " Highlight current column
set showmatch            " Show matching brackets
set matchtime=2          " How long to highlight matching brackets
set hlsearch             " Highlight search results
set incsearch            " Incremental search
set ignorecase           " Case insensitive search
set smartcase            " Case sensitive when capital letters used
set scrolloff=8          " Keep 8 lines above/below cursor
set sidescrolloff=8      " Keep 8 columns left/right
set colorcolumn=100      " Show column 100 for line length
set list                 " Show invisible characters
set listchars=tab:→\ ,trail:·,nbsp:␣,eol:↲

" ============================================
" Global Autocommands
" ============================================
" Highlight TODO/FIXME in ALL files
autocmd BufWinEnter * call matchadd('Todo', 'TODO\|FIXME\|XXX\|NOTE\|HACK', 10)

" Enable spell checking for markdown and text files only
autocmd FileType markdown,text setlocal spell spelllang=en_us

" Set commentstring based on filetype
autocmd FileType c,cpp setlocal commentstring=//\ %s
autocmd FileType python setlocal commentstring=#\ %s
autocmd FileType javascript,typescript setlocal commentstring=//\ %s
autocmd FileType lua setlocal commentstring=--\ %s
autocmd FileType sh setlocal commentstring=#\ %s
autocmd FileType go setlocal commentstring=//\ %s
autocmd FileType rust setlocal commentstring=//\ %s

" ============================================
" FINAL: Ensure Gruber Dark is ALWAYS the default
" ============================================
" Force theme on every window
autocmd WinEnter * if exists('g:colors_name') && g:colors_name != 'gruber-dark' | colorscheme gruber-dark | endif

" Refresh highlighting on theme change
autocmd ColorScheme * call s:global_highlighting()

" Manual refresh command
command! GruberRefresh call s:global_highlighting() | echo "Gruber Dark highlighting refreshed"

" Display confirmation
echo "Gruber Dark theme loaded and set as DEFAULT for ALL file types!"
