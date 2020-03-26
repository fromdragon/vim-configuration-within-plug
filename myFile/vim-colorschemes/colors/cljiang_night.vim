" Vim color file
" Maintainer:	cljiang	
" Last Change:	2001 Jul 23

" This is the default color scheme.  It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "cljiang"

"hi Normal 	ctermbg=235     ctermfg=247   "背景色
"hi Comment 	ctermbg=235	    ctermfg=110   "注释
"hi CursorLine cterm=bold    ctermbg=236	  "下划线 
"hi Constant ctermbg=235		ctermfg=124	  "tab  <include>
"hi Visual   ctermbg=238					  "圈选区
"hi Title ctermfg=73					  "函数名
"hi Function ctermfg=73					  "函数名
"hi Statement ctermfg=136				  "语法关键字
"hi PreProc   ctermfg=5                    "macro
"hi Pmenu     ctermfg=2      ctermbg=239      "关键字补全菜单 
"hi PmenuSel  cterm=bold ctermfg=2       ctermbg=234   "关键字补全菜单选中项
"hi Search    cterm=bold ctermbg=100 ctermfg=251    "高亮显示
"hi Directory ctermfg=12                      "补全的目录
"hi LineNr ctermfg=247 ctermbg=236            "行号
"hi CursorLineNr   cterm=bold ctermfg=130 ctermbg=235    "光标行号
"hi SignColumn    term=bold ctermfg=4 ctermbg=236 guifg=DarkBlue guibg=Grey "标记mark列背景色


hi SpecialKey      term=bold ctermfg=4 guifg=Blue
hi NonText         term=bold ctermfg=12 gui=bold guifg=Blue
hi Directory       term=bold ctermfg=12 guifg=Blue
hi ErrorMsg        term=standout ctermfg=15 ctermbg=1 guifg=White guibg=Red
hi IncSearch       term=reverse cterm=reverse gui=reverse
hi Search          term=reverse cterm=bold ctermfg=251 ctermbg=100 guibg=Yellow
hi MoreMsg         term=bold ctermfg=2 gui=bold guifg=SeaGreen
hi ModeMsg         term=bold cterm=bold gui=bold
hi LineNr          term=underline ctermfg=247 ctermbg=236 guifg=Brown
hi CursorLineNr    term=bold cterm=bold ctermfg=130 ctermbg=235 gui=bold guifg=Brown
hi Question        term=standout ctermfg=2 gui=bold guifg=SeaGreen
hi StatusLine      term=bold,reverse cterm=bold,reverse gui=bold,reverse
hi StatusLineNC    term=reverse cterm=reverse gui=reverse
hi VertSplit       term=reverse cterm=reverse gui=reverse
hi Title           term=bold ctermfg=73 gui=bold guifg=Magenta
hi Visual          term=reverse ctermbg=238 guibg=LightGrey
hi VisualNOS       term=bold,underline cterm=bold,underline gui=bold,underline
hi WarningMsg      term=standout ctermfg=1 guifg=Red
hi WildMenu        term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi Folded          term=standout ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=LightGrey
hi FoldColumn      term=standout ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=Grey
hi DiffAdd         term=bold ctermbg=81 guibg=LightBlue
hi DiffChange      term=bold ctermbg=225 guibg=LightMagenta
hi DiffDelete      term=bold ctermfg=12 ctermbg=159 gui=bold guifg=Blue guibg=LightCyan
hi DiffText        term=reverse cterm=bold ctermbg=9 gui=bold guibg=Red
hi SignColumn      term=bold ctermfg=4 ctermbg=236 guifg=DarkBlue guibg=Grey
hi Conceal         ctermfg=7 ctermbg=242 guifg=LightGrey guibg=DarkGrey
hi SpellBad        term=reverse ctermbg=224 gui=undercurl guisp=Red
hi SpellCap        term=reverse ctermbg=81 gui=undercurl guisp=Blue
hi SpellRare       term=reverse ctermbg=225 gui=undercurl guisp=Magenta
hi SpellLocal      term=underline ctermbg=14 gui=undercurl guisp=DarkCyan
hi Pmenu           ctermfg=2 ctermbg=239 guibg=LightMagenta
hi PmenuSel        cterm=bold ctermfg=2 ctermbg=234 guibg=Grey
hi PmenuSbar       ctermbg=248 guibg=Grey
hi PmenuThumb      ctermbg=0 guibg=Black
hi TabLine         term=underline cterm=underline ctermfg=0 ctermbg=7 gui=underline guibg=LightGrey
hi TabLineSel      term=bold cterm=bold gui=bold
hi TabLineFill     term=reverse cterm=reverse gui=reverse
hi CursorColumn    term=reverse ctermbg=7 guibg=Grey90
hi CursorLine      term=underline cterm=bold ctermbg=236 guibg=Grey90
hi ColorColumn     term=reverse ctermbg=224 guibg=LightRed
hi StatusLineTerm  term=bold,reverse cterm=bold ctermfg=15 ctermbg=2 gui=bold guifg=bg guibg=DarkGreen
hi StatusLineTermNC  term=reverse ctermfg=15 ctermbg=2 guifg=bg guibg=DarkGreen
hi Normal          ctermfg=247 ctermbg=235
hi MatchParen      term=reverse ctermbg=14 guibg=Cyan
hi ToolbarLine     term=underline ctermbg=7 guibg=LightGrey
hi ToolbarButton   cterm=bold ctermfg=15 ctermbg=242 gui=bold guifg=White guibg=Grey40
hi Comment         term=bold ctermfg=110 ctermbg=235 guifg=Blue
hi Constant        term=underline ctermfg=124 ctermbg=235 guifg=Magenta
hi Special         term=bold ctermfg=5 guifg=#6a5acd
hi Identifier      term=underline ctermfg=6 guifg=DarkCyan
hi Statement       term=bold ctermfg=136 gui=bold guifg=Brown
hi PreProc         term=underline ctermfg=5 guifg=#6a0dad
hi Type            term=underline ctermfg=2 gui=bold guifg=SeaGreen
hi Underlined      term=underline cterm=underline ctermfg=5 gui=underline guifg=SlateBlue
hi Ignore          ctermfg=15 guifg=bg
hi Error           term=reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red
hi Todo            term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow
hi Function        term=bold ctermfg=63


