set runtimepath+=/usr/local/go/misc/vim
syntax on

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'wting/rust.vim'
Bundle 'derekwyatt/vim-scala'
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'Blackrush/vim-gocode'
Bundle "pangloss/vim-javascript"
Bundle 'SirVer/ultisnips'
Bundle 'kchmck/vim-coffee-script'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-fugitive'
Bundle 'alunny/pegjs-vim'
Bundle 'tpope/vim-haml'

Bundle 'bling/vim-airline'
set laststatus=2

Bundle 'Syntastic'
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_highlighting=1
let g:syntastic_echo_current_error=1

Bundle 'bling/vim-bufferline'
Bundle 'majutsushi/tagbar'

" EasyMotion
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<Leader>'

" Color scheme
colorscheme grb256 " zenburn grb256 elflord

" Tab size
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4

set number	" Because line numbers are nice
set ruler

" Leader
let mapleader=','

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" UltiSnips mappings
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<c-b>"

" Prevent UltiSnips from stealing ctrl-k.
augroup VimStartup
	autocmd!
	autocmd VimEnter * sil! iunmap <c-k>
augroup end

" Gnome
set t_Co=256

" Re-active filetype
filetype plugin indent on
