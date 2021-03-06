filetype off                  " required
" vim-plug
call plug#begin()



" Duo tome colors
Plug 'atelierbram/vim-colors_duotones'
Plug 'chriskempson/base16-vim'

" colors
"au VimEnter * set term=screen
let base16colorspace=256  " Access colors present in 256 colorspace
"set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
syntax enable
set background=dark
"colorscheme default
colorscheme base16-twilight
highlight LineNr ctermfg=DarkGray ctermbg=black
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
set laststatus=2 " show when one window
" let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16'
" simple separators for buffer list
"let g:airline_left_sep=''
"let g:airline_right_sep=''
"let g:airline_left_alt_sep = ''
"let g:airline_right_alt_sep = ''
" don't count trailing whitespace since it lags in huge files
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts=1


highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

" Jump when search
set incsearch
" Toggle numbers
set number
:nmap <F12> :set invnumber<CR>

set mouse=a

" Bracket highlights
Plug 'luochen1990/rainbow'
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

Plug 'Chiel92/vim-autoformat'

" XML (HTM)
Plug 'othree/xml.vim'
        
" JSON highlight
Plug 'elzr/vim-json'


" :NERDTree
Plug 'scrooloose/nerdtree'
" Plug 'jistr/vim-nerdtree-tabs'
" " Open NERDTree on vim startup
" let g:nerdtree_tabs_open_on_console_startup = 1
nnoremap tc  :tabnew<CR>
" nnoremap th  :tabfirst<CR>
nnoremap tl  :tabnext<CR>
" nnoremap tk  :tablast<CR>
nnoremap th  :tabprev<CR>
" nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
" nnoremap tm  :tabm<Space>
" nnoremap td  :tabclose<CR>
"
" Open tree if no files opened
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

Plug 'mileszs/ack.vim'
" Use ag instead ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" open NERDTree for all tabs with Ctrl-t
map <C-t> :NERDTreeToggle<CR>

"Plug 'L9'

Plug 'surround.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'sjl/gundo.vim'

" Edit parentheses
Plug 'vim-scripts/paredit.vim'

" Find files in curernt dir with ctrl+p
Plug 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
map <C-b> :CtrlPMRUFiles<CR>

" Инденты
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

Plug 'The-NERD-Commenter'

Plug 'edkolev/tmuxline.vim'
let g:tmuxline_powerline_separators = 1
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'y'    : ['%R', '%a'],
      \'z'    : '#H'}

Plug 'trotzig/import-js'
Plug 'heavenshell/vim-jsdoc'

" Snippets
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
" Optional:
" Plug 'honza/vim-snippets'

Plug 'moll/vim-node'

Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'

Plug 'digitaltoad/vim-jade'

Plug 'benekastah/neomake'
let g:neomake_javascript_enabled_makers = ['eslint', 'coffeelint', 'jsonlint', 'csslint']
"autocmd! BufWritePost * Neomake

" Clojurescript plugins
Plug 'guns/vim-clojure-static'
"Plug 'tpope/vim-classpath'
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-clojure-highlight'
"Plug 'tpope/vim-salve'

" Coffeescript
Plug 'kchmck/vim-coffee-script'


" Http client
Plug 'aquach/vim-http-client'

" Dash.app integration
Plug 'rizzatti/dash.vim'

" Move swp? files to tmp directory
" Usefull for soft like boot
" boot rebuild if files added or changed  
" set backup
"set swapfile
"set backupdir=/tmp/vim-tmp
"set directory=/tmp/vim-tmp


" Find and replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" All oa your Plugs must be added before the following line
call plug#end()
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


autocmd FileType c,cpp,java,php,ruby,python,js,coffee,clj,cljs autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

au BufNewFile,BufRead *.tt2 set filetype=html
au BufNewFile,BufRead *.bemhtml set filetype=javascript
au BufNewFile,BufRead *.cljs set filetype=clojure
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead *.jade set filetype=jade
