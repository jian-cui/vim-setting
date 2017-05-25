set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'   " 自动补全

Plugin 'scrooloose/nerdtree'
" 这个插件可以显示文件的Git增删状态
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}  " 状态栏修改

Plugin 'mattn/emmet-vim'          " emmet插件
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'Raimondi/delimitMate'     " 自动补全大括号
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'altercation/vim-colors-solarized'
Plugin 'statianzo/vim-jade'
Plugin 'posva/vim-vue'
" 垂直缩进对齐
" Plugin 'git://github.com/nathanaelkane/vim-indent-guides.git'

call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" powerline 设置 begin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Inconsolata\ for\ Powerline:h14v
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" powerline 设置 end
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-javascript 设置 begin
let javascript_enable_domhtmlcss = 1
" vim-javascript 设置 end

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerd tree 设置 begin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl+N 打开/关闭
map <C-n> :NERDTreeToggle<CR>
" 当不带参数打开Vim时自动加载项目树
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 当所有文件关闭时关闭项目树窗格
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" 不显示这些文件
let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules'] 
" 不显示项目树上额外的信息，例如帮助、提示什么的
let NERDTreeMinimalUI=1
" show all hidden file
let NERDTreeShowHidden=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerd tree 设置 end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""
" indent_guides setting begin
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1 
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
""""""""""""""""""""""""""""""""""""""""""""""""""""
" indent_guides setting end
""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 中文编码问题 begin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set fileencoding=chinese
" set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" set enc=utf8
" set encoding=utf8
" set termencoding=utf-8
set ffs=unix,dos,mac  " 设置换行符格式
set ff=unix           " 设置缓冲区换行符格式
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 中文编码问题 end
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI设置 begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
 set background=dark
 let g:solarized_visibility = "high"
 let g:solarized_contrast = "high"
 let g:solarized_termtrans = 1
 let g:solarized_termcolors = 256
 colorscheme solarized
 set linespace=4
 " Maximum window when GUI running
 set lines=9999
 set columns=9999
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI设置 end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" wrap
set wrap

" syntax on
syntax on
syntax enable

" show line number
set nu

" hide icons
set go=

set noimdisable
" set HELP document Chinese
set helplang=cn

set ruler

" 文档被改动时，自动加载
set autoread

" auto save
set autowrite

" highlight current line
set cursorline

" hightlight current column
" set cursorcolumn

" 光标移动到buffer的顶部和底部时保持3行距离   
set scrolloff=3  

" turn on wild menu
set wildmenu

set magic

" 和系统剪切板统一
set clipboard+=unnamed

" auto indent
set autoindent
set cindent

" set tab equals 4 space
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" ignore case when searching
set ignorecase
" hightlight search
set hlsearch
set incsearch

" use mouse in vim
set mouse=a

" show cmd
set showcmd

" cmd height 1
set cmdheight=1

".vimrc编辑后自动生效,避免重启
autocmd! bufwritepost .vimrc source ~/.vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件备份选项 begin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" turn backup off
set nobackup
set nowb
set noswapfile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件备份选项 end
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

