filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
runtime macros/matchit.vim

" Packages
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'bling/vim-airline'
Bundle 'git://github.com/altercation/vim-colors-solarized.git'
Bundle 'edkolev/tmuxline.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'airblade/vim-gitgutter'
Bundle 'c.vim'
Bundle 'rodjek/vim-puppet'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-ruby/vim-ruby'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'tpope/vim-endwise'

" Ruby
autocmd Filetype ruby set shiftwidth=2|set softtabstop=2|set expandtab

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

" Theme
let g:solarized_termcolors=16
set t_Co=256
syntax enable
filetype plugin indent on
colorscheme solarized
set background=dark
highlight SignColumn ctermbg=8
autocmd ColorScheme * highlight clear SignColumn

" Line number
set number

" Display tabs and eol
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

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

"  General settings
set nocompatible
