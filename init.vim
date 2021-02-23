syntax on 
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set relativenumber
" https://stackoverflow.com/questions/3961859/how-to-copy-to-clipboard-in-vim
" set clipboard=unnamedplus

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

let mapleader = " "

nnoremap <leader>h :wincmd h<CR> 
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

" THE BEST REMAP:
vnoremap <leader>p "_dP 

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'vim-utils/vim-man'
Plug 'shinchu/lightline-gruvbox.vim'
" git plugins
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
" interactive evaluation clojure:
Plug 'Olical/conjure', {'tag': 'v4.14.1'}

call plug#end()

colorscheme gruvbox 
" colorscheme dracula 
set background=dark
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

" copy-paste?
function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction

vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p

