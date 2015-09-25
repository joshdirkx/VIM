" + GENERAL -----------------------------------------------
" + + COLORING --------------------------------------------
"colorscheme peaksea
colorscheme slate
set t_Co=256
set background=dark
let g:solarized_termtrans = 1
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
" + + END OF LINE -----------------------------------------
set list
set listchars=eol:¬,tab:\ \
" + + FOLDING ---------------------------------------------
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent
" + + MOVEMENT --------------------------------------------
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor
nnoremap j gj
nnoremap k gk
"set mouse=a
" + + MISC ------------------------------------------------
syntax on
filetype plugin indent on
syntax enable
set tabstop=4
set expandtab
set shiftwidth=4
set nocompatible
let mapleader=","
set relativenumber
set number
set cursorline
set noswapfile
set backspace=indent,eol,start
set autoindent
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
" + + DELIMITMATE -----------------------------------------
" + + EASYMOTION ------------------------------------------
" + + FILEBEAGLE ------------------------------------------
" + + FUGITIVE --------------------------------------------
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
" + + GITGUTTER -------------------------------------------
" + + GUNDO -----------------------------------------------
nnoremap <leader>u :GundoToggle<CR>
" + + NEOCOMPLETE -----------------------------------------
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" + + NERDTREE --------------------------------------------
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
" + + SUPERTAB --------------------------------------------
" + + SYNTASTIC -------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" + + TABULAR ---------------------------------------------
"nnoremap t :Tab /
" + + TAGBAR ----------------------------------------------
nmap <C-t> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/local/bin/ctags/'
" + + UNITE -----------------------------------------------
"nnoremap f :Unite -start-insert file_rec
" + PATHOGEN ----------------------------------------------
execute pathogen#infect()
