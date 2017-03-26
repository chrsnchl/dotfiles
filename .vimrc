"ctrlp fuzzy search
set runtimepath^=~/.vim/bundle/ctrlp.vim

let mapleader = "\<Space>"
execute pathogen#infect()
colorscheme molokai
syntax on
filetype plugin indent on
"--------Split Management-----------"
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
" save file with space w
nnoremap <Leader>w :w<CR>
" quit file with space q
nnoremap <Leader>q :q!<CR>
" open netrw file explorer with space e
nnoremap <Leader>e :E<CR>
" delete buffer with space d
nnoremap <Leader>d :bd<CR>

nnoremap <Leader>ev :vsp $MYVIMRC<cr>
nnoremap ; :
nnoremap : ;
nnoremap ` :buffers<CR>:buffer<Space>
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
imap jj <Esc>
set mouse=a
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set number
set hlsearch
set incsearch
set cursorline
set wildmenu

nmap :ed :edit %:p:h/

" Keep terminal background from bleeding through
if &term =~ '256color'                                                          
	set t_ut=                                                               
endif

"Code folding
set foldmethod=syntax
set foldlevelstart=20

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML
