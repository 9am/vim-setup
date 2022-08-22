set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/syntastic'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Yggdroot/indentLine'
Plugin 'leafgarland/typescript-vim'
Plugin 'posva/vim-vue'
Plugin 'Shougo/vimproc.vim'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

filetype plugin indent on
" To ignore plugin indent changes, instead use:
" filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" settings
syntax enable
syntax on

let g:rehash256 = 1
set t_Co=256
colorscheme molokai

set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
set noundofile
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set number
set showcmd
set incsearch
set hlsearch
set nowrap
set cc=90
set backspace=indent,eol,start
set omnifunc=ale#completion#OmniFunc

" config
nmap <silent> W :pclose<CR>
nmap <silent> <F2> :NERDTreeToggle<CR>
nmap <silent> <F12> <Plug>(ale_go_to_definition)
nmap <silent> <F10> <Plug>(ale_go_to_type_definition)
nmap <silent> <F9> :ALEGoToImplementation<CR>

nmap <silent> <F4> <Plug>(ale_find_references)
nmap <silent> <F3> <Plug>(ale_documentation)

" ale
" '*': ['remove_trailing_lines', 'trim_whitespace'],
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'typescript': ['prettier'],
\}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_python_flake8_options = '--max-line-length 88 --extend-ignore=E203'

" airline
let g:airline_theme = 'molokai'

" Folding
" set foldmethod=syntax
" set foldlevel=99
