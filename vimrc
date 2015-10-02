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
set tabstop=2
set expandtab
set shiftwidth=2
let mapleader=","
set cursorline
set noswapfile
set backspace=indent,eol,start
set autoindent
let g:solarized_termtrans = 1
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
set list
set listchars=eol:¬,tab:\ \

" show tabline always
set showtabline=2

" no more arrow keys
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

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

" ag.vim
nnoremap <leader>a :Ag
" airline
let g:airline_theme = 'bubblegum'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1
" ctrlp
let g:ctrlp_match_window = 'bottom,order:ttb'
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
" tagbar
nmap <C-t> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/local/bin/ctags/'
