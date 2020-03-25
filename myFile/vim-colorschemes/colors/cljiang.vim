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

hi Normal 	ctermbg=235     ctermfg=247   "背景色
hi Comment 	ctermbg=235	    ctermfg=110   "注释
hi CursorLine cterm=bold    ctermbg=236	  "下划线 
hi Constant ctermbg=235		ctermfg=124	  "tab  <include>
hi Visual   ctermbg=238					  "圈选区
hi Title ctermfg=73					  "函数名
hi Function ctermfg=73					  "函数名
hi Statement ctermfg=136				  "语法关键字
hi PreProc   ctermfg=5                    "macro
hi Pmenu     ctermfg=2      ctermbg=239      "关键字补全菜单 
hi PmenuSel  cterm=bold ctermfg=2       ctermbg=234   "关键字补全菜单选中项
hi Search    cterm=bold ctermbg=100 ctermfg=251    "高亮显示
hi Directory ctermfg=12                      "补全的目录
hi LineNr ctermfg=247 ctermbg=236            "行号
hi CursorLineNr   cterm=bold ctermfg=130 ctermbg=235    "光标行号
hi SignColumn    term=bold ctermfg=4 ctermbg=236 guifg=DarkBlue guibg=Grey "标记mark列背景色
"hi StatusLineNC ctermbg=235  ctermfg=247    "状态栏（光标不选中）
"hi StatusLine ctermbg=235  ctermfg=136		"状态栏（光标选中）

if version > 700

  au InsertEnter * hi StatusLine ctermbg=235 ctermfg=Blue
  au InsertLeave * hi StatusLine ctermbg=235  ctermfg=136
  au WinEnter * hi StatusLine ctermbg=235  ctermfg=136

endif
" vim: sw=2
