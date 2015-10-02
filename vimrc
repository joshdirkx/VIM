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
" + GENERAL -----------------------------------------------
" + + COLORING --------------------------------------------
colorscheme railscasts
let g:solarized_termtrans = 1
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
" + + END OF LINE -----------------------------------------
set list
set listchars=eol:¬,tab:\ \
" + + MOVEMENT --------------------------------------------
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor
nnoremap j gj
nnoremap k gk
" + + MISC ------------------------------------------------
syntax on
filetype plugin indent on
syntax enable
set tabstop=2
set expandtab
set shiftwidth=2
set nocompatible
let mapleader=","
set relativenumber
set number
set cursorline
set noswapfile
set backspace=indent,eol,start
set autoindent
set nowrap
" + + REBINDINGS ------------------------------------------
inoremap jk <esc>
nmap <leader>w :w!<CR>
nmap <leader>q :q!<CR>
nmap <leader>wq :wq<CR>
" + + SEARCH ----------------------------------------------
set incsearch
set hlsearch
map <C-h> :nohlsearch<CR>
" + PLUGINS -----------------------------------------------
" + + AG --------------------------------------------------
nnoremap <leader>a :Ag
" + + AIRLINE ---------------------------------------------
let g:airline_theme            = 'base16'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1
" + + CTRLP -----------------------------------------------
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
" + + NEOCOMPLETE -----------------------------------------
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" + + SUPERTAB --------------------------------------------
let g:SuperTabDefaultCompletionType = "<c-n>"
" + + SYNTASTIC -------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_mode_map = { 'mode': 'passive' }
" + + TAGBAR ----------------------------------------------
nmap <C-t> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/local/bin/ctags/'
