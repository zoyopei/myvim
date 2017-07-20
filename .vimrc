set nocompatible
set nu
filetype on
set incsearch
set hlsearch
set wildmenu
set laststatus=2
set nofoldenable
set bs=2

filetype indent on
filetype plugin indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

syntax on
syntax enable
colorscheme molokai

set cursorline
" set cursorcolumn
highlight CursorLine   cterm=bold

set backup
set backupext=.bak
"set patchmode=.orig
set directory=~/.vim-tmp
set backupdir=~/.vim-tmp

let mapleader="\<Space>"
inoremap <C-k> <ESC>
inoremap <M-h> <Left>
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-l> <Right>
inoremap <M-d> <DELETE>
inoremap ˙ <Left>
inoremap ∆ <Down>
inoremap ˚ <Up>
inoremap ¬ <Right>
inoremap ∂ <DELETE>

nmap ,v "+p
vmap ,c "+yy
nmap ,c "+yy

" ctags
"set tags=tags
"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>


" Bundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


" The NERD tree allows you to explore your filesystem and to open files and
" directories.
Plugin 'scrooloose/nerdtree'
map <F5> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" a class outline viewer for Vim
Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>


" Supertab is a vim plugin which allows you to use <Tab> for all your insert
" completion needs
Plugin 'ervandew/supertab'

" minibufexpl
Plugin 'fholgado/minibufexpl.vim'

" airline
Plugin 'vim-airline/vim-airline'

" c-support
" Plugin 'WolfgangMehner/c-support'

" Vim motion on speed!
Plugin 'easymotion/vim-easymotion'
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
map <Leader><leader>. <Plug>(easymotion-repeat)

" Insert or delete brackets, parens, quotes in pair.
Plugin 'jiangmiao/auto-pairs'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'kien/ctrlp.vim'

" Doxygen
Plugin 'zoyopei/DoxygenToolkit.vim'

" Surround.vim is all about surroundings: parentheses, brackets, quotes, XML
" tags, and more. The plugin provides mappings to easily delete, change and
" add such surroundings in pairs.
Plugin 'tpope/vim-surround'

" NERD Commenter
Plugin 'scrooloose/nerdcommenter'

" additional vim c++ syntax highlighting
Plugin 'octol/vim-cpp-enhanced-highlight'
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

" ctrlsf
Plugin 'dyng/ctrlsf.vim'
let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_ignore_dir = ['tags', '.git', 'GTAGS', 'GPATH', 'GRTAGS']
let g:ctrlsf_default_root = 'project+fw'
let g:ctrlsf_case_sensitive = 'yes'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
source ~/.vimrc_ycm
"Plugin 'rdnetto/YCM-Generator'

"Plugin 'justmao945/vim-clang'
"let g:clang_c_options = '-std=gnu11'
"let g:clang_cpp_options = '-std=c++14 -stdlib=libc++'
"let g:clang_compilation_database = './build'

" neocomplete
" Plugin 'Shougo/neocomplete.vim'
" source ~/.vimrc_neo

Plugin 'gtags.vim'
set cscopetag
set cscopeprg='gtags-cscope'
cs add GTAGS
let GtagsCscope_Auto_Load = 1
let CtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1
