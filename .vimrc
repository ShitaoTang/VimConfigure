" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" autocmd InsertEnter * se nocul
" autocmd InsertLeave * se nocul
syntax on
" 语法高亮
"set cursorline
" highlight CursorLine ctermbg=255 
" 用浅色高亮当前行
set smartindent
" 智能对齐
set autoindent
" 自动对齐
set confirm
" 在处理未保存或只读文件的时候，弹出确认
set tabstop=4
" Tab键的宽度
set softtabstop=4
set shiftwidth=4
"  统一缩进为4
set noexpandtab
" 不要用空格代替制表符
set number
" 显示行号
set history=50
" 历史纪录数
set hlsearch
set incsearch
" 搜索逐字符高亮
set gdefault
" 行内替换
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1
" 编码设置
" 设置颜色主题
"set guifont=Monaco:h16:
" 设置字体
"
set guifont=Consolas\ 16
set langmenu=zn_CN.UTF-8
set helplang=cn
" 语言设置
set cmdheight=2
" 命令行（在状态行）的高度，默认为1,这里是2
" 在编辑过程中，在右下角显示光标位置的状态行
set laststatus=2
" 总是显示状态行
" set showcmd
" 在状态行显示目前所执行的命令，未完成的指令片段亦会显示出来
set scrolloff=3
" 光标移动到buffer的顶部和底部时保持3行距离
set showmatch
" 高亮显示对应的括号
set matchtime=1
" 对应括号高亮的时间（单位是十分之一秒）
set autowrite
" 在切换buffer时自动保存当前文件
set wildmenu
" 增强模式中的命令行自动完成操作
set linespace=2
" 字符间插入的像素行数目
set whichwrap=b,s,<,>,[,]
" 开启Normal或Visual模式下Backspace键，空格键，左方向键，右方向键，Insert或replace模式下左方向键，右方向键跳行的功能。
set mouse=a

call plug#begin('~/.vim/plugged')

Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'wojciechkepka/vim-github-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine' 

call plug#end()


let g:airline_theme="bubblegum"
" 设置状态栏
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
       \ '0': '0 ',
       \ '1': '1 ',
       \ '2': '2 ',
       \ '3': '3 ',
       \ '4': '4 ',
       \ '5': '5 ',
       \ '6': '6 ',
       \ '7': '7 ',
       \ '8': '8 ',
       \ '9': '9 '
       \}
" 设置切换tab的快捷键 <\> + <i> 切换到第i个 tab
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
" 设置切换tab的快捷键 <\> + <-> 切换到前一个 tab
nmap <leader>- <Plug>AirlineSelectPrevTab
" 设置切换tab的快捷键 <\> + <+> 切换到后一个 tab
nmap <leader>+ <Plug>AirlineSelectNextTab
" 设置切换tab的快捷键 <\> + <q> 退出当前的 tab
nmap <leader>q :bp<cr>:bd #<cr>
" 修改了一些个人不喜欢的字符
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = "CL" " current line
let g:airline_symbols.whitespace = '|'
let g:airline_symbols.maxlinenr = 'Ml' "maxline
let g:airline_symbols.branch = 'BR'
let g:airline_symbols.readonly = "RO"
let g:airline_symbols.dirty = "DT"
let g:airline_symbols.crypt = "CR"

let g:indentLine_enabled = 0
" let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
" let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
