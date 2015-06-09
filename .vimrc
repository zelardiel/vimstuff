set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-cucumber'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'kana/vim-textobj-user'
Plugin 'rhysd/vim-textobj-ruby'
Plugin 'tpope/vim-haml'
Plugin 'vim-scripts/JSON.vim'
Plugin 'tpope/vim-sleuth'
Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'moll/vim-bbye'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'

" Color schemes
" Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-vividchalk'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set noexpandtab    " Space-indent masterrace
set tabstop=4    " 2-spaces
set shiftwidth=4 " Instruct `<< >>` to use 2 spaces

set hidden
set number

set guioptions-=T
set guioptions-=m
" PHP debugging
nmap <Leader>deb i<RIGHT>echo('<pre>');<CR>print_r();<CR>echo('</pre>');<CR>exit;<UP><UP><RIGHT><RIGHT><RIGHT>

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Switch between buffers
nmap <C-Left> [b
nmap <C-Right> ]b

nmap <leader>b :CtrlPBuffer<CR>
" Format code
map <C-S-f> mzgg=G`z<CR>
" Open NerdTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
" Close buffer
map <C-c> :Bclose<CR>
" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

if has('gui_running')
  set background=dark
  colorscheme vividchalk
endif
