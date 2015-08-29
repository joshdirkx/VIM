set nocompatible

"move vertically by visual line
nnoremap j gj
nnoremap k gk

"hightlight current line
set cursorline

"no swp file
set noswapfile

"fold options
"enable folding
set foldenable
"open most folds by default
set foldlevelstart=10
"nested fold maximum
set foldnestmax=10
"open/close folds with space
nnoremap <space> za
"fold on indent
set foldmethod=indent

syntax on
filetype plugin indent on
syntax enable
set ts=2
set et
set sw=2

"toggle tagbar
nmap <C-t> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/local/bin/ctags/'

"CtrlP settings
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
"map ctrl.p to Ctrl+P
let g:ctrlp_map = '<c-p>'

"ag for file search
nnoremap f :Ag 

"open nerdtree if no files are specified on start
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"tell vim to use 256 colors
set t_Co=256
set background=dark

"set color scheme
let g:solarized_termtrans = 1
"colorscheme solarized
colorscheme peaksea

"airline customization
let g:airline_theme            = 'solarized'
let g:airline_enable_branch    = 1
let g:airline_enable_syntastic = 1

"turn line numbers on
set number

"allow mouse scrolling
set mouse=a

"make backspace work like everywhere else
set backspace=indent,eol,start
set expandtab
set autoindent

"search as characters are entered
"begin search with /
set incsearch
"highlight matches
set hlsearch
"turn off search highlight with control + h
map <C-h> :nohlsearch<CR>

"csapprox setting for gui colorschemes
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }

"setting for airline
set laststatus=2

"uncomment the next line if you want to use powerline fonts with airline
let g:airline_powerline_fonts = 1

"fuzzy search for file using Unite
"nnoremap f :Unite -start-insert file_rec

"shortened Tabular alignment
"nnoremap t :Tab /

"start git commands with ,g
"nnoremap g :Git 

"nerdTREE open with control + n
map <C-n> :NERDTreeToggle<CR>
"nerdTree open on right
let g:NERDTreeWinPos = "right"


execute pathogen#infect()
