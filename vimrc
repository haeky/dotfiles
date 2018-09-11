set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Packages
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
Plugin 'edkolev/tmuxline.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'airblade/vim-gitgutter'
Plugin 'rodjek/vim-puppet'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'tpope/vim-endwise'
Plugin 'git://github.com/tpope/vim-fugitive.git'
Plugin 'stephpy/vim-yaml'
Plugin 'vim-javascript'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

" Go
autocmd FileType go set shiftwidth=4|set softtabstop=4|set tabstop=4|set noexpandtab|set nolist
nmap <leader>o :GoDef<CR>

" Ruby
autocmd Filetype ruby set shiftwidth=2|set softtabstop=2|set expandtab

" Javascript
autocmd Filetype javascript set shiftwidth=2|set softtabstop=2|set expandtab
autocmd Filetype coffeescript set shiftwidth=2|set softtabstop=2|set expandtab

" Python
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

" Java
autocmd FileType java set tabstop=4|set shiftwidth=4|set expandtab

" Airline
set laststatus=2
set guifont=Monaco\ for\ Powerline
let g:airline_powerline_fonts=1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline_theme='solarized'

" NerdCommenter
let NERDSpaceDelims=1

" Theme
let g:solarized_termcolors=16
set t_Co=256
syntax enable
colorscheme solarized
set background=dark
highlight SignColumn ctermbg=8
autocmd ColorScheme * highlight clear SignColumn

" CTRLP
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_mruf_relative = 1
let g:ctrlp_mruf_exclude = '.*/tmp/.*\|.*/.git/.*'
let g:ctrlp_max_files = 0

" Line number
set number

" Display tabs and eol
nmap <leader>l :set list!<CR>
set listchars=tab:→\ ,trail:×
set list

" Tabulation
set tabstop=2
set expandtab

" Whitespace hightlight
autocmd BufWritePre *.py,*.java,*.rb,*.coffee,*.rake,*.js :%s/\s\+$//e
set fileformat=unix
highlight ExtraWhitespace ctermbg=red guibg=red

" Hotkey
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <C-n> :NERDTreeToggle<CR>

" Disabling arrows
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
