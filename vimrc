set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" vundle is fundle
Bundle 'gmarik/vundle'
" fuzzy search
Bundle 'rking/ag.vim'
" fuzzy file finder
Bundle 'kien/ctrlp.vim'
" autocomplete for brackets, quotes etc
Bundle 'raimondi/delimitMate'
" keyword completion
Bundle 'shougo/neocomplete.vim'
" insert completions with tab
Bundle 'ervandew/supertab'
" syntax checker
Bundle 'scrooloose/syntastic'
" tags for classes, methods
Bundle 'majutsushi/tagbar'
" status bar
Bundle 'bling/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
" git wrapper
Bundle 'tpope/vim-fugitive'
" show git changes on side
Bundle 'airblade/vim-gitgutter'
" autocomplete blocks for ruby
Bundle 'tpope/vim-endwise'
" - for jumping between files
Bundle 'tpope/vim-vinegar'
" auto update tags after ctags -R .
Bundle 'craigemery/vim-autotag'

" Delete if causes no problems, turned off 12/5
"Bundle 'xolox/vim-misc'

" general
syntax enable
filetype plugin indent on
"set background=dark
colorscheme vimbrant
"highlight ColorColumn ctermbg=7
"highlight ColorColumn guibg=Gray
" softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
set shiftround

" speed brah
set ttyfast
set ttyscroll=3
set lazyredraw

" backspace delete in insert
set backspace=2

" highlight search matches
set hlsearch

" index ctags
nmap <leader>ct :!ctags -R .<CR>

" always show cursor
set ruler

" 80 char column
set textwidth=79
set colorcolumn=+1

" seperate vertical splits
hi vertsplit guifg=fg guibg=bg

" mapleader is now comma
let mapleader=","

" hightlight current line
set cursorline
"set cursorcolumn

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

" new tab
nmap <leader>t :tabnew<CR>
nmap <leader>tc :tabclose<CR>

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

" wq with leader
nmap <leader>w :w!<CR>
nmap <leader>q :q!<CR>
nmap <leader>wq :wq<CR>

" registers
nmap <leader> "<CR>

" set current line as absolute
" relative based on current position
set number
set relativenumber

" ctags
nnoremap <leader>d <C-w><C-]><C-w>T
"nnoremap <leader>d <C-]><CR>

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
let g:airline_theme='simple'
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
" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive' }
" tagbar
nmap <leader>stb :TagbarToggle<CR>
