""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Plugin 'Valloric/YouCompleteMe'   " 自动补全

Plug 'scrooloose/nerdtree'
" 这个插件可以显示文件的Git增删状态
Plug 'Xuyuanp/nerdtree-git-plugin'

" Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}  " 状态栏修改

" Plug 'mattn/emmet-vim'          " emmet插件
Plug 'hail2u/vim-css3-syntax'     " css3
Plug 'groenewege/vim-less'        " less
Plug 'mattn/emmet-vim' " html拓展
Plug 'pangloss/vim-javascript'   " js
Plug 'posva/vim-vue' " vue
Plug 'statianzo/vim-jade' " jade
Plug 'digitaltoad/vim-pug' " pug

Plug 'vim-airline/vim-airline'         " 状态栏美化
Plug 'vim-airline/vim-airline-themes'  " 状态栏美化

Plug 'nathanaelkane/vim-indent-guides'
Plug 'jiangmiao/auto-pairs' " 括号匹配
Plug 'Raimondi/delimitMate'     " 自动补全大括号
Plug 'junegunn/vim-easy-align' " 对齐指定符号
Plug 'Valloric/YouCompleteMe' " 代码自动补全
Plug 'maksimr/vim-jsbeautify' " js/css/html代码格式化

" Theme
" Plug 'altercation/vim-colors-solarized' " 主题
Plug 'iCyMind/NeoSolarized' " 支持真彩色的solarized主题
Plug 'liuchengxu/space-vim-theme' " 主题
Plug 'morhetz/gruvbox' " 主题


Plug 'vim-airline/vim-airline' " 信息栏设置
Plug 'vim-airline/vim-airline-themes' " 信息栏主题

" Git
Plug 'airblade/vim-gitgutter' " 显示git diff

" 设置输入法
Plug 'https://github.com/vim-scripts/fcitx.vim.git'

" snippet插件
Plug 'SirVer/ultisnips' " snippet生成插件

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ultisnips begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<c-t>"
let g:UltiSnipsJumpForwardTrigger="<c-t>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
let g:UltiSnipsSnippetDirectories=['UltiSnips']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ultisnips end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline设置 begin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! AirlineInit()
  let g:airline#extensions#tabline#enabled=1
  " let g:airline#extensions#tabline#left_sep = ' '
  " let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline#extensions#tabline#formatter = 'unique_tail'
  let g:airline_powerline_fonts = 1
  " let g:airline_theme='<theme>' " 设置airline主题
endfunction
" autocmd VimEnter * call AirlineInit()
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
" let g:airline_theme='<theme>' " 设置airline主题

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline设置 end
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 主题设置 begin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
syntax enable
set termguicolors " 支持真彩色
" set background=dark
" colorscheme NeoSolarized
colorscheme space_vim_theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 主题设置 end
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" jsbeautify begin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType javascript noremap <buffer> ff :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> ff :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> ff :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> ff :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> ff :call CSSBeautify()<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" jsbeautify end
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




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
let NERDTreeIgnore=['\.pyc$', '\.swp', '\.swo', '\.vscode', '__pycache__', '.git', '.DS_Store'] 
" show all hidden file
" let NERDTreeShowHidden=1

" autocmd vimenter * NERDTree  "自动开启Nerdtree
" "let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
" let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
" "设置树的显示图标
" " let g:NERDTreeDirArrowExpandable = '▸'
" " let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeShowLineNumbers=1  " 是否显示行号
" let g:NERDTreeHidden=1     " 显示隐藏文件
" "Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerd tree 设置 end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





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



""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自定义快捷键 begin
""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自定义快捷键 end
""""""""""""""""""""""""""""""""""""""""""""""""""""




filetype plugin indent on    " required

" vim-javascript 设置 begin
let javascript_enable_domhtmlcss = 1
" vim-javascript 设置 end

" 设置空白字符的视觉提示
" set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽

" 设置80列
:set colorcolumn=80

" wrap
set wrap

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

" 光标移动到buffer的顶部和底部时保持n行距离   
set scrolloff=1 

" turn on wild menu 在命令行中tab自动补全路径
set wildmenu

" 减少vim重绘
set lazyredraw

set magic
" 高亮对应的括号
set showmatch

" 和系统剪切板统一
set clipboard+=unnamed

" auto indent
set autoindent
set cindent

" 设置折叠方式
set fdm=indent
" set foldlevel=99 " 设置折叠层数
set nofoldenable " 默认关闭折叠
set foldnestmax=3 " 最多折叠三层
" set foldclose=all " 关闭自动折叠

" set tab equals 4 space
set tabstop=2
set softtabstop=2
set shiftwidth=2
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
