set nocompatible


filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" ------Making Vim look good -------------------
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" ---- Vim as a programmer's text editor --------
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'nathanaelkane/vim-indent-guides'

" ----- Working with Git ------------------
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" ---- Other text editing features ----------------
Plugin 'Raimondi/delimitMate'

" ------ Extras/Advanced plugins --------
" Highlight and strip trailing whitespace
Plugin 'ntpeters/vim-better-whitespace'

" Easily surround chunks of text
Plugin 'tpope/vim-surround'

" Align CSV files at commas, align Markdown tables, and more
Plugin 'godlygeek/tabular'

" Automaticall insert the closing HTML tag
Plugin 'vim-scripts/HTML-AutoCloseTag'

" Dicker's Dockerfile syntax
Plugin 'ekalinin/Dockerfile.vim'

call vundle#end()              " required
filetype plugin indent on      " required

" --- General settings ---
set backspace=indent,eol,start " All backspace in insert mode
set ruler
set cursorline
set cursorcolumn
set number                     " Line number are good
set nowrap                     " 禁止折行
set showcmd                    " Show incomplete cmds down the bottom
set incsearch                  " Find the next match as type the search
set hlsearch                   " Highlight searches by default
set ignorecase                 " Ignore case when searching
set smartcase                  " Sensitive case when searching unless type a capital
filetype indent on " 自适应不同语言的智能缩进
set softtabstop=4  " 让 vim 把连续数量的空格视为一个制表符
set shiftwidth=4   " 设置格式化时制表符占用空格数
set tabstop=4      " 设置编辑时制表符占用空格数
set expandtab      " 制表符扩展为空格
set wildmenu

syntax enable
syntax on                      " turn on syntax highlighting

set mouse=a

" We need this for plugins like Syntastic and vim-gitgutter which put symbols
" in the sign column.
hi clear SignColum

"--- -----Plugin-Specific Settings ----------
"
"----altercation/vim-colors-solarized settings ------
" Toggle this to "light" for light colorscheme
"set background=dark

" Uncomment the next line if your terminal is not configured for solarized
"let g:solarized_termcolors=256

" Set the colorscheme
"colorscheme solarized


" ----- vim-airline/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"                 https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" finall, uncomment the next line
let g:airline_powerline_fonts = 1

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled=1

" Use the solarized theme for the Airline status bar
let g:airline_theme='solarized'

" ------ jistr/vim-nerdtree-tabs -------------
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1


" ----- vim-syntastic/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = '▲'
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END


" ---- xolox/vim-easytags settings ----
" Where to look for tagss files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_eventss = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings --------
" Open/close tagbar with \b
"nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)


" ---- ariblade/vim-gitgutter settings ---------
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1


" ----------- Raimondi/delimitMate ---------
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes              = ""
  au FileType tex let b:delimitMate_matchpairs          = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes   = ['"', "'"]
augroup END

" ---------nathanaelkane/vim-indent-guides ----------
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
"let g:indent_guides_guide_size=1

