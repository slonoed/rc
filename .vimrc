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

" подстветка json'а
Plugin 'elzr/vim-json'

" :NERDTree
Bundle 'scrooloose/nerdtree'
" open tree if no file
 autocmd vimenter * if !argc() | NERDTree | endif
" open with Ctrl-n
map <C-n> :NERDTreeToggle<CR>

Bundle 'jistr/vim-nerdtree-tabs'
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

Bundle 'L9'

Bundle 'surround.vim'

" Поиск файлов
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
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

filetype on
filetype plugin on
au BufNewFile,BufRead *.tt2 set filetype=html
au BufNewFile,BufRead *.bemhtml set filetype=javascript
