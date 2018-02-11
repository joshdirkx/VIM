set nocompatible
filetype off

call plug#begin()
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
" tmux
Plug 'edkolev/tmuxline.vim'
" git wrapper
Plug 'tpope/vim-fugitive'
" show git changes on side
Plug 'airblade/vim-gitgutter'
" autocomplete blocks for ruby
Plug 'tpope/vim-endwise'
" - for jumping between files
Plug 'tpope/vim-vinegar'
" syntax
Plug 'w0rp/ale'
Plug 'jelera/vim-javascript-syntax'
" editorconfig
Plug 'editorconfig/editorconfig-vim'
" colors
Plug 'dracula/vim'
call plug#end()

" general
syntax enable
"set background=dark
set t_Co=256
color dracula
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set shiftround
set backspace=2

" ctags
set cscopetag
set cscopetagorder=1

" searching
set ignorecase
set smartcase
set incsearch
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
set list
set listchars=eol:¬,tab:\ \

" no more arrow keys
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

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
set number

" speed related
set ttyfast
set ttyscroll=3
set lazyredraw

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

"trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

"autodetect *.conf syntax
autocmd BufRead,BufNewFile *.conf setf dosini
autocmd BufRead,BufNewFile *.json.jbuilder setf ruby

" ale
let g:ale_lint_on_text_changed = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
" ag.vim
nnoremap <leader>a :Ag
" airline
let g:airline_theme='dracula'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
" ctrlp
let g:ctrlp_match_window = 'bottom,order:btt,min:0,max:5,results:5'
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
"open with default as file search
let g:ctrlp_by_filename = 1
" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#max_list = 10
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" rust.vim
let g:rustfmt_autosave = 1
" supertab
let g:SuperTabDefaultCompletionType = "<c-n>"
