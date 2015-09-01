set nocompatible

"syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0 
let g:syntastic_check_on_wq = 1

"change eol character
set list
set listchars=eol:¬,tab:\ \

"unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

"enable constant and relative line numbers
set relativenumber
set number

"leader set to ,
let mapleader=","

"open ag.vim
nnoremap <leader>a :Ag

"rebind escape to jk
inoremap jk <esc>

"rebind w, q, wq
nmap <leader>w :w!<CR>
nmap <leader>q :q!<CR>
nmap <leader>wq :wq<CR>

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

"toggle gundo.vim
nnoremap <leader>u :GundoToggle<CR>

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

"open nerdtree if no files are specified on start
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"tell vim to use 256 colors
set t_Co=256
set background=dark

"fugitive bindings
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>

"set color scheme
let g:solarized_termtrans = 1
"colorscheme solarized
colorscheme peaksea

"neocomplete.vim
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

"airline customization
let g:airline_theme            = 'base16'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1

"allow mouse scrolling
"set mouse=a

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
nnoremap <leader>g :G

"nerdTREE open with control + n
map <C-n> :NERDTreeToggle<CR>
"nerdTree open on right
let g:NERDTreeWinPos = "right"

execute pathogen#infect()
