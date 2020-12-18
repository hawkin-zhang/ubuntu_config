

"通用配置
""通用配置
syntax on  " 开启语法高亮
set ts=4
set expandtab
" colorscheme peachpuff "vim配置方案
set bg=dark                     "设置背景为黑色
colorscheme gruvbox             "设置主题为 gruvbox
set number  " 显示行号
set hls "搜索时高亮显示被找到的文本
set scrolloff=3 " 上下可视行数
set incsearch   " 搜索时高亮显示被找到的文本
set ignorecase "搜索忽略大小写
set enc=utf-8  "编码设置
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 "编码自动识别
set mouse=n "鼠标普通模式
" set cursorline "选中行出现下划线
" map qq :qa!<CR> "多窗口不保存关闭
" map ww :wqa!<CR> "多窗口保存关闭
" "vim自动打开跳到上次的光标位置
" if has("autocmd")
"         au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") |
" exe "normal! g'\"" | endif
" endif
set nocompatible  "设置backspace的工作方式
set backspace=indent,eol,start " 设置backspace的工作方式
map <F5> :set listchars=tab:>-,trail:-<CR> :set list<CR> " 显示空格和tab
map <F6> :set list!<CR> " 取消显示空格和tab
set rtp+=/opt/hawkin/opensource/fzf
"ctrl+h move to right buffer
nnoremap <C-j> :bp<CR>
"ctrl+l move to left buffer
nnoremap <C-k> :bn<CR>
"ctrl+^ close current buffer
nnoremap <C-^> :bd<CR>
nnoremap <C-o> :Files<CR>
"调用Rg进行搜索，包含隐藏文件
"command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case --hidden '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%'),
  \   <bang>0)
nnoremap <C-r> :Rg<CR>


"Tlist插件配置
let Tlist_Show_One_File           = 1 " 只显示当前文件的tags
"let Tlist_Auto_Open			  = 1 " 打开vim自动打开Tlist
let Tlist_GainFocus_On_ToggleOpen = 1 " 打开Tlist窗口时,光标跳到list窗口
let Tlist_Exit_OnlyWindow         = 1 " 如果Tlist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window         = 1 " 在左侧窗口中显示
let Tlist_File_Fold_Auto_Close    = 1 " 自动折叠
let Tlist_Auto_Update             = 1 " 自动更新
let Tlist_Process_File_Always = 0
"" <F4> 打开 Tlist 窗口，在左侧栏显示
map <F4> :TlistToggle<CR>

"NERDTree设置
""将F2设置为开关NERDTree的快捷键
map <F2> :NERDTreeToggle<CR>
""修改树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
""窗口位置
let g:NERDTreeWinPos='left'
""窗口尺寸
let g:NERDTreeSize=30
""窗口是否显示行号
let g:NERDTreeShowLineNumbers=1
""不显示隐藏文件
let g:NERDTreeHidden=0
""打开vim时如果没有文件自动打开NERDTree
autocmd vimenter * if !argc()|NERDTree|endif
""当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""打开vim时自动打开NERDTree
"autocmd vimenter * NERDTree


"airline状态栏配置

"打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='solarized'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1


" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

" " 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'

" " 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" " 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
silent! call mkdir(s:vim_tags, 'p')
endif
"
"    " 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']


""""""""""""""""""""""""""""""""""""""""""""""""
"ycm configuration
""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
" 跳转快捷键
"nnoremap <c-k> :YcmCompleter GoToDeclaration<CR>|
"nnoremap <c-h> :YcmCompleter GoToDefinition<CR>| 
"nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|
" " 停止提示是否载入本地ycm_extra_conf文件
let g:ycm_confirm_extra_conf = 0
" " 语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
" " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files = 1
" " 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
" " 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" " 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" " 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 弹出列表时选择第1项的快捷键(默认为<TAB>和<Down>)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" 弹出列表时选择前1项的快捷键(默认为<S-TAB>和<UP>)
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" 主动补全, 默认为<C-Space>
"let g:ycm_key_invoke_completion = ['<C-Space>']
" 停止显示补全列表(防止列表影响视野), 可以按<C-Space>重新弹出
let g:ycm_key_list_stop_completion = ['<C-y>']

"""""""""""""""""""""""""""""""""""""""""""
"vim-cpp-modern configuration
"""""""""""""""""""""""""""""""""""""""""""
" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1
" Disable function highlighting (affects both C and C++ files)
let g:cpp_no_function_highlight = 1
" " Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1
"
" " Put all standard C and C++ keywords under Vim's highlight group
" 'Statement'
" " (affects both C and C++ files)
let g:cpp_simple_highlight = 1
"""""""""""""""""""""""""""""""""""""""""""
" rainbow_parentheses  configuration
"""""""""""""""""""""""""""""""""""""""""""
"autocmd VimEnter * RainbowParenthesesToggle
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
let g:rainbow_active = 1
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


call plug#begin('~/.vim/plugged')
" NERDTree插件的github网址（不包含前缀https://github.com/）
Plug 'scrooloose/nerdtree'
Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-scripts/taglist.vim' "Tlist标签列表插件
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'ycm-core/YouCompleteMe'
Plug 'kien/rainbow_parentheses.vim'
call plug#end()
