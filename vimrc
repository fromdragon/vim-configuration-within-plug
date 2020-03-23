"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置引导键
let mapleader = "\\"
let g:mapleader = "\\"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim plug 插件管理
call plug#begin('~/.vim/plug_custom/')
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/L9'
Plug 'vim-scripts/FuzzyFinder'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'mileszs/ack.vim'
Plug 'flazz/vim-colorschemes'
Plug 'preservim/nerdtree'
Plug 'kshenoy/vim-signature'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'vim-scripts/The-NERD-Commenter'
call plug#end()



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ctags operate
set tags=tags;
set autochdir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"backspace key setting
set backspace=indent,eol,start

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"lightline config 
"总是显示状态行
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"line number
set number

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"file type check
filetype on

"自定义语法高亮
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"自动对齐
set autoindent

"依据上面的对齐格式，智能的选择对齐方式，对于类似C语言编写上有用
set smartindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"制表位4个空格
set tabstop=4
set shiftwidth=4
set expandtab  
set softtabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"设置匹配模式，类似当输入一个左括号时会匹配相应的右括号
set showmatch



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"highlight/no highlight search
"nmap <C-h> :set hlsearch!<cr>
set hlsearch
nmap <C-h> :nohl<cr>

" ignore / noignore case
" nmap <leader>ic :set ignorecase!<cr>
" "search no wrap / wrap
" nmap <leader>ws :set wrapscan!<cr>    

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"查找自动匹配关键词位置
set incsearch
"忽略关键字大小写
set ignorecase
"智能匹配关键字大小写
set smartcase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

" From an idea by Michael Naumann
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置折叠模式方法
set foldmethod=marker

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"keymap format
nmap <leader>ff gg=G


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"delete  redundant  space
noremap <leader>ds :%s/^\s\+//<cr>:%s/\s\+$//<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"支持的文件编码类型
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 增强模式中的命令行自动完成操作
set wildmenu
"底行模式补全功能设为仿shell操作，按tab键列出文件
set wildmode=longest,list

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"line hightlight
set cursorline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" system clipboard
vmap <C-y> "+y


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"buffer 操作

nmap <tab> :b#<cr>
nmap <S-tab> :bNext<cr>
nmap BD :bd<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set how many lines of history vim has to remember
set history=500
set autoread


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"save cursor position of quit for next open
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"取消自动补全注释关键字功能
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set hidden

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"save file  map: ALt+w: 输入方法：ctrl+v 再输入alt+w，extremely useful！
imap w <ESC>:w<cr>
nmap w :w<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" auto sv and ld viminfo
let g:AutoInfoFile="~/.Cljiangviminfo"
if filereadable(g:AutoInfoFile)
""if argc() == 0
au VimEnter * call EnterHandler()
"au SessionLoadPost * call SessionLoad()
endif
""endif
au VimLeave * call LeaveHandler()
function! LeaveHandler()
exec "wviminfo ".g:AutoInfoFile
endfunction
function! EnterHandler()
exec "rviminfo ".g:AutoSessionFile
endfunction


"viminfo
set viminfo+=%100


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"display / hidden line num
nmap <C-n> :set nu!<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"上下保留5行
set so=5

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"修改窗口大小
nmap -- 5<C-w>-
nmap ++ 5<C-w>+
nmap >> 5<C-w>>
nmap << 5<C-w><


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set lightline theme
let g:lightline = {
	\ 'colorscheme': 'cljiang',
\ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set colorscheme
"colorscheme Atelier_CaveDark 
colorscheme cljiang 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"FuzzyFinder config key map
nmap <F4> :FufDirWithFullCwd<CR>
nmap <F5> :FufFileWithFullCwd<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"ack config
let g:ackprg = 'ag --nogroup --column'
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NERDTree key map
nmap <F8> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Taglist key map
nmap <F9> :TlistToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""












