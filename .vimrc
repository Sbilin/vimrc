
autocmd BufWritePost $MYVIMRC source $MYVIMRC

    let mapleader=";"
    let g:mapleader=";"

"Open filetype detected

	filetype on
	filetype plugin on


	nmap LB 0
	nmap LE $
	vnoremap <Leader>y "+y
	nmap <Leader>p "+p

	nmap <Leader>q :q<CR>
	nmap <Leader>w :w<CR>
	nmap <Leader>WQ :wa<CR>:q<CR>
	nmap <Leader>Q :qa!<CR>
	nnoremap nw <C-W><C-W>
	nnoremap <Leader>lw <C-W>l
	nnoremap <Leader>hw <C-W>h
	nnoremap <Leader>kw <C-W>k
	nnoremap <Leader>jw <C-W>j
	nmap <Leader>M %


	set incsearch
	set ignorecase
	set nocompatible
	set wildmenu
	
	set background=dark	
	colorscheme molokai
	
	set gcr=a:block-blinkon0
	set guioptions-=l
	set guioptions-=L
	set guioptions-=r
	set guioptions-=R
	set guioptions-=m
	set guioptions-=T

fun! ToggleFullscreen()
	call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
map <silent> <F11> :call ToggleFullscreen()<CR>
" autocmd VimEnter * call ToggleFullscreen()


" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'derekwyatt/vim-protodef'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
Plugin 'jiangmiao/auto-pairs'
" 插件列表结束

call vundle#end()
filetype plugin indent on



	set laststatus=2
	set ruler
	set number
	set cursorline
	set cursorcolumn
	set hlsearch
"set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI
    set guifont=YaHei\ Consolas\ Hybrid\ 11.5
    set nowrap
    let g:Powerline_colorscheme='solarized256'
    
    syntax enable
    syntax on
    syntax keyword cppSTLtype initializer_list
"set nowrap
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

    let g:indent_guides_enable_on_vim_startup=1
    let g:indent_guides_start_level=2
    let g:indent_guides_guide_size=1
    :nmap <silent> <Leader>i <Plug>IndentGuidesToggle
    set foldmethod=syntax
    set nofoldenable
let g:ctrlsf_ackprg = 'ack'
"let g:ctrlsf_ignore_dir
let g:ctrlsf_default_view_mode = 'compact'
nnoremap <C-f> :CtrlSF<Space>
set nocompatible
let tagbar_left=1
nnoremap <Leader>ilt :TagbarToggle<CR> 
let tagbar_width=32 
let g:tagbar_compact=1
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }
nmap <Leader>tn :tnext<CR>
nmap <Leader>tp :tprevious<CR>
set tags+=/Users/bilin/cpp_src/stdcpp.tags
let g:ctrlsf_default_view_mode = 'normal'
let g:multi_cursor_next_key='<S-n>'
let g:multi_cursor_skip_key='<S-k>'
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
"
let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=1
set completeopt-=preview
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
inoremap <leader>; <C-x><C-o>
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>


let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"
nmap <Leader>fl :NERDTreeToggle<CR>
let NERDTreeWinSize=32
let NERDTreeWinPos="left"
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1


nnoremap <Leader>ud :GundoToggle<CR>
" 快捷键
map <SPACE> <Plug>(wildfire-fuel)
vmap <S-SPACE> <Plug>(wildfire-water)
" 适用于哪些结对符
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

