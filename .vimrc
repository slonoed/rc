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
set background=light

highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

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
        
" JSON highlight
Plugin 'elzr/vim-json'


" :NERDTree
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
" Open NERDTree on vim startup
let g:nerdtree_tabs_open_on_console_startup = 1
nnoremap tc  :tabnew<CR>
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tablast<CR>
nnoremap tl  :tabprev<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" open NERDTree for all tabs with Ctrl-n
map <C-t> :NERDTreeTabsToggle<CR>


"Bundle 'L9'

Bundle 'surround.vim'

" Find files in curernt dir with ctrl+p
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Инденты
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

Bundle 'The-NERD-Commenter'

Plugin 'bling/vim-airline'
set laststatus=2 " иначе не показывается на одном окне

Plugin 'trotzig/import-js'

Plugin 'moll/vim-node'

Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'

Plugin 'scrooloose/syntastic'
let g:syntastic_javascript_checkers = ['eslint']

" Clojurescript plugins
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-highlight'

" All oa your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

filetype on
filetype plugin on
au BufNewFile,BufRead *.tt2 set filetype=html
au BufNewFile,BufRead *.bemhtml set filetype=javascript
au BufNewFile,BufRead *.cljs set filetype=clojure
