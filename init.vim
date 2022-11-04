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

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

let mapleader = " "
let maplocalleader=","

" clear after search:
nnoremap <Leader><space> :noh<cr>
" copying something to the clipboard register you type "*y

nnoremap <leader>h :wincmd h<CR> 
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR> nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>hp :resize +5<CR>
nnoremap <Leader>hm :resize -5<CR>

"(R)eplace all
"https://vi.stackexchange.com/questions/13689/how-to-find-and-replace-in-vim-without-having-to-type-the-original-word
nnoremap <leader>rr yiw:%s/\<<C-r>"\>//g<left><left>

" THE BEST REMAP:
vnoremap <leader>p "_dP 


call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'vim-utils/vim-man'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'mattn/emmet-vim'
" git plugins
" Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
" interactive evaluation clojure:
Plug 'Olical/conjure', {'tag': 'v4.14.1'}
" REPL python, Ocaml, etc
Plug 'metakirby5/codi.vim'
" Coq
Plug 'whonore/Coqtail'
" Stan
Plug 'eigenfoo/stan-vim'
" latex:
Plug 'lervag/vimtex'
" send-to-window:
Plug 'karoliskoncevicius/vim-sendtowindow'
" add this line to your .vimrc file
Plug 'mattn/emmet-vim'
" fzf
" https://www.youtube.com/watch?v=on1AzaZzQ7k
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
call plug#end()

colorscheme gruvbox 
"colorscheme dracula 
set background=dark
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

" emmet only for ...
let g:user_emmet_install_global = 0
autocmd FileType html,css,php EmmetInstall

" lateX:
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" terminal for neovim:

" open terminal:
map <Leader>tt :new term://zsh<CR>
" exit insert when in terminal:
tnoremap <Esc> <C-\><C-n>

" window Splits
set splitbelow splitright
" remap splits navigation to just CTRL + hjkl

" Visual mode:
vnoremap <leader>h <Esc><c-w>h
vnoremap <leader>j <Esc><c-w>j
vnoremap <leader>k <Esc><c-w>k
vnoremap <leader>l <Esc><c-w>l

" Normal mode:
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l

" sendtowindow remaps:
let g:sendtowindow_use_defaults=0

nmap <leader>L <Plug>SendRight
xmap <leader>L <Plug>SendRightV
nmap <leader>H <Plug>SendLeft
xmap <leader>H <Plug>SendLeftV
nmap <leader>K <Plug>SendUp
xmap <leader>K <Plug>SendUpV
nmap <leader>J <Plug>SendDown
xmap <leader>J <Plug>SendDownV

