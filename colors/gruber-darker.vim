" ============================================
" Tsoding Gruber Darker Theme - Minimal Vimscript
" ============================================

set background=dark

" General UI
hi Normal guifg=#e4e4e4 guibg=#181818
hi NonText guifg=#52494e guibg=#181818
hi SpecialKey guifg=#52494e guibg=#181818

" Syntax Highlighting
hi Comment guifg=#cc8c3c gui=italic
hi Constant guifg=#95a99f
hi String guifg=#73c936
hi Character guifg=#73c936
hi Number guifg=#9e95c7
hi Boolean guifg=#ffdd33
hi Float guifg=#9e95c7

hi Identifier guifg=#e4e4e4
hi Function guifg=#95a99f

hi Statement guifg=#ffdd33
hi Conditional guifg=#ffdd33
hi Repeat guifg=#ffdd33
hi Label guifg=#ffdd33
hi Operator guifg=#e4e4e4
hi Keyword guifg=#ffdd33
hi Exception guifg=#ffdd33

hi PreProc guifg=#95a99f
hi Include guifg=#95a99f
hi Define guifg=#95a99f
hi Macro guifg=#95a99f
hi PreCondit guifg=#95a99f

hi Type guifg=#95a99f
hi StorageClass guifg=#ffdd33
hi Structure guifg=#ffdd33
hi Typedef guifg=#95a99f

hi Special guifg=#e4e4e4
hi SpecialChar guifg=#e4e4e4
hi Tag guifg=#e4e4e4
hi Delimiter guifg=#e4e4e4
hi SpecialComment guifg=#cc8c3c
hi Debug guifg=#f43841

hi Underlined guifg=#96a6c8 gui=underline
hi Ignore guifg=#52494e
hi Error guifg=#f43841 guibg=#181818 gui=undercurl
hi Todo guifg=#181818 guibg=#ffdd33 gui=bold

" UI Elements
hi LineNr guifg=#52494e guibg=#181818
hi CursorLineNr guifg=#ffdd33 guibg=#181818 gui=bold
hi CursorLine guibg=#282828
hi CursorColumn guibg=#282828
hi ColorColumn guibg=#282828

hi StatusLine guifg=#e4e4e4 guibg=#282828 gui=bold
hi StatusLineNC guifg=#52494e guibg=#181818
hi VertSplit guifg=#52494e guibg=#181818

hi TabLine guifg=#52494e guibg=#181818
hi TabLineSel guifg=#e4e4e4 guibg=#282828 gui=bold
hi TabLineFill guifg=#52494e guibg=#181818

hi Visual guibg=#453d41
hi VisualNOS guibg=#453d41
hi Search guifg=#181818 guibg=#ffdd33
hi IncSearch guifg=#181818 guibg=#73c936

hi Pmenu guifg=#e4e4e4 guibg=#282828
hi PmenuSel guifg=#181818 guibg=#96a6c8
hi PmenuSbar guibg=#453d41
hi PmenuThumb guifg=#96a6c8

hi Folded guifg=#52494e guibg=#181818
hi FoldColumn guifg=#52494e guibg=#181818
hi SignColumn guifg=#e4e4e4 guibg=#181818

hi MatchParen guifg=#ffdd33 guibg=#282828
hi SpellBad guisp=#f43841 gui=undercurl
hi SpellCap guisp=#ffdd33 gui=undercurl
hi SpellLocal guisp=#73c936 gui=undercurl
hi SpellRare guisp=#96a6c8 gui=undercurl

" Diff
hi DiffAdd guifg=#181818 guibg=#73c936
hi DiffChange guifg=#181818 guibg=#ffdd33
hi DiffDelete guifg=#181818 guibg=#f43841
hi DiffText guifg=#181818 guibg=#96a6c8

" ============================================
" Lualine diff — explicit readable fg on dark bg
" ============================================
hi LuaLineDiffAdd    guifg=#73c936 guibg=#282828 gui=NONE
hi LuaLineDiffChange guifg=#ffdd33 guibg=#282828 gui=NONE
hi LuaLineDiffDelete guifg=#f43841 guibg=#282828 gui=NONE

" ============================================
" Neogit diff body — subtle bg tint, readable fg
" ============================================
hi NeogitDiffAdd        guifg=#e4e4e4 guibg=#1e2a18
hi NeogitDiffAddHighlight guifg=#181818 guibg=#73c936
hi NeogitDiffDelete     guifg=#e4e4e4 guibg=#2a1818
hi NeogitDiffDeleteHighlight guifg=#181818 guibg=#f43841
hi NeogitDiffContext    guifg=#e4e4e4 guibg=#181818
hi NeogitDiffContextHighlight guifg=#e4e4e4 guibg=#282828

" File-level markers in the status buffer
hi NeogitChangeAdded    guifg=#73c936 guibg=NONE gui=bold
hi NeogitChangeDeleted  guifg=#f43841 guibg=NONE gui=bold
hi NeogitChangeModified guifg=#ffdd33 guibg=NONE gui=bold
hi NeogitChangeRenamed  guifg=#96a6c8 guibg=NONE gui=bold
hi NeogitChangeUpdated  guifg=#95a99f guibg=NONE gui=bold
hi NeogitChangeUnmerged guifg=#f43841 guibg=NONE gui=bold

" ============================================
" Let baleia.nvim control error highlights
" ============================================
hi ErrorMsg gui=undercurl guisp=Red
hi WarningMsg gui=undercurl guisp=Yellow
hi InfoMsg gui=undercurl guisp=Blue
