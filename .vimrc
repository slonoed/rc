set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" colors
set t_Co=256
syntax on
set background=dark
colorscheme default

highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

" Jump when search
set incsearch
" Toggle numbers
:nmap <F12> :set invnumber<CR>

" Bracket highlights
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1
let g:rainbow_operators = 1
let g:rainbow_conf = {
\   'guifgs': ['darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['darkgreen', 29, 'darkcyan', 97],
\   'operators': '',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

Plugin 'Chiel92/vim-autoformat'

" XML (HTM)
Plugin 'othree/xml.vim'
        
" JSON highlight
Plugin 'elzr/vim-json'


" :NERDTree
Bundle 'scrooloose/nerdtree'
" Bundle 'jistr/vim-nerdtree-tabs'
" " Open NERDTree on vim startup
" let g:nerdtree_tabs_open_on_console_startup = 1
nnoremap tc  :tabnew<CR>
" nnoremap th  :tabfirst<CR>
nnoremap tl  :tabnext<CR>
" nnoremap tk  :tablast<CR>
nnoremap th  :tabprev<CR>
" nnoremap tt  :tabedit<Space>
" nnoremap tn  :tabnext<Space>
" nnoremap tm  :tabm<Space>
" nnoremap td  :tabclose<CR>
"
" Open tree if no files opened
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

Plugin 'mileszs/ack.vim'

" open NERDTree for all tabs with Ctrl-n
map <C-t> :NERDTreeToggle<CR>

"Bundle 'L9'

Bundle 'surround.vim'

" Git
Plugin 'tpope/vim-fugitive'

" Edit parentheses
Plugin 'vim-scripts/paredit.vim'

" Find files in curernt dir with ctrl+p
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
map <C-b> :CtrlPMRUFiles<CR>

" Инденты
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

Plugin 'The-NERD-Commenter'
Plugin 'bling/vim-airline'
set laststatus=2 " show when one window
" let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='badwolf'
" simple separators for buffer list
"let g:airline_left_sep=''
"let g:airline_right_sep=''
"let g:airline_left_alt_sep = ''
"let g:airline_right_alt_sep = ''
" don't count trailing whitespace since it lags in huge files
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts=1

Plugin 'edkolev/tmuxline.vim'
let g:tmuxline_powerline_separators = 1
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'y'    : ['%R', '%a'],
      \'z'    : '#H'}

Plugin 'trotzig/import-js'
Plugin 'heavenshell/vim-jsdoc'

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional:
Plugin 'honza/vim-snippets'

Plugin 'moll/vim-node'

Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'

Plugin 'digitaltoad/vim-jade'

Plugin 'scrooloose/syntastic'
let g:syntastic_javascript_checkers = ['eslint']

" Clojurescript plugins
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-highlight'
Plugin 'tpope/vim-salve'

" Coffeescript
Plugin 'kchmck/vim-coffee-script'


" Http client
Plugin 'aquach/vim-http-client'

" Dash.app integration
Plugin 'rizzatti/dash.vim'

" Move swp? files to tmp directory
" Usefull for soft like boot
" boot rebuild if files added or changed  
" set backup
"set swapfile
"set backupdir=/tmp/vim-tmp
"set directory=/tmp/vim-tmp


" Find and replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" All oa your Plugins must be added before the following line
call vundle#end()            " required
filetype on
filetype plugin indent on    " required
filetype plugin on

set cursorline

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python,js autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre *.js :call <SID>StripTrailingWhitespaces()

au BufNewFile,BufRead *.tt2 set filetype=html
au BufNewFile,BufRead *.bemhtml set filetype=javascript
au BufNewFile,BufRead *.cljs set filetype=clojure
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead *.jade set filetype=jade
