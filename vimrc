set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" vundle is fundle
Bundle 'gmarik/vundle'
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'raimondi/delimitMate'
Bundle 'shougo/neocomplete.vim'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'bling/vim-airline'
Bundle 'easymotion/vim-easymotion'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
" general
syntax enable
filetype plugin indent on
colorscheme railscasts

" softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
set shiftround

" backspace delete in insert
set backspace=2

" index ctags
map <leader>ct :!ctags -R .<CR>

" always show cursor
set ruler

" 80 char column
set textwidth=120
set colorcolumn=+1

" mapleader is now comma
let mapleader=","

" hightlight current line
set cursorline

" no swp file
set noswapfile
let g:solarized_termtrans = 1
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

" navigate multilines more naturally
nnoremap j gj
nnoremap k gk

" escape is now jj
inoremap jj <esc>

" change to leader
nmap <leader>w :w!<CR>
nmap <leader>q :q!<CR>
nmap <leader>wq :wq<CR>
set incsearch
set hlsearch

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

" format whole file
nmap <leader>fef ggVG=

" ag.vim
nnoremap <leader>a :Ag
" airline
set laststatus=2
let g:airline_theme = 'bubblegum'
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
nnoremap <leader>. :CtrlPTag<cr>
" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" supertab
let g:SuperTabDefaultCompletionType = "<c-n>"
" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_mode_map = { 'mode': 'passive' }
