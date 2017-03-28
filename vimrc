set nocompatible
filetype off

call plug#begin()
" vundle is fundle
Plug 'gmarik/vundle'
" fuzzy search
Plug 'rking/ag.vim'
" fuzzy file finder
Plug 'kien/ctrlp.vim'
" autocomplete for brackets, quotes etc
Plug 'raimondi/delimitMate'
" keyword completion
Plug 'shougo/neocomplete.vim'
" insert completions with tab
Plug 'ervandew/supertab'
" status bar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" git wrapper
Plug 'tpope/vim-fugitive'
" show git changes on side
Plug 'airblade/vim-gitgutter'
" autocomplete blocks for ruby
Plug 'tpope/vim-endwise'
" - for jumping between files
Plug 'tpope/vim-vinegar'
" rust syntax
Plug 'rust-lang/rust.vim'
" javascript
Plug 'jelera/vim-javascript-syntax'
" go
Plug 'fatih/vim-go'

call plug#end()

" general
syntax enable
set background=dark
set t_Co=16
"let g:solarized_termcolors=256
set background=dark
colorscheme solarized
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set shiftround
set backspace=2

" speed brah
set ttyfast
set ttyscroll=3
set lazyredraw

" highlight search matches
set hlsearch

" always show cursor
set ruler

" 80 char column
set textwidth=79
set colorcolumn=+1

" seperate vertical splits
hi vertsplit guifg=fg guibg=bg

" mapleader is now comma
let mapleader=","

set cursorline

" no swp file
set noswapfile
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
set list
set listchars=eol:¬,tab:\ \

" no more arrow keys
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

" no seriously, no arrows
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" enable folding
set foldmethod=indent
set foldlevel=99

" fold with spacebar
nnoremap <space> za

" switch buffers
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprev<CR>

" navigate multilines more naturally
nnoremap j gj
nnoremap k gk

" escape is now jj
inoremap jj <esc>

" opposite of shift j
nnoremap K i<CR><Esc>

" open new tabs
nmap <leader>tn :tabnew<CR>

" wq with leader
nmap <leader>w :w!<CR>
nmap <leader>q :q!<CR>
nmap <leader>wq :wq<CR>

" set current line as absolute
" relative based on current position
set number
set relativenumber

" split right/below
set splitbelow
set splitright

" change panes with Ctrl + HJKL
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" split easier
nmap <leader>vsp :vsp<CR>
nmap <leader>hsp :sp<CR>

" resize splits
nmap <leader>vsr :vertical resize 
nmap <leader>hsr :resize 

" format whole file
nmap <leader>fef ggVG=

" ag.vim
nnoremap <leader>a :Ag 
" airline
set laststatus=2
let g:airline_theme='solarized'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 2
" ctrlp
let g:ctrlp_match_window = 'bottom,order:btt'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
let g:ctrlp_map = '<c-p>'
" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" supertab
let g:SuperTabDefaultCompletionType = "<c-n>"
