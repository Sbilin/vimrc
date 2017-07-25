
autocmd BufWritePost $MYVIMRC source $MYVIMRC

	let mapleader=";"

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
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
" 插件列表结束
call vundle#end()
filetype plugin indent on



	set laststatus=2
	set ruler
	set number
	set cursorline
	set cursorcolumn
	set hlsearch
set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI
set nowrap





