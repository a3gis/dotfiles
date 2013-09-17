set runtimepath+=/usr/local/go/misc/vim
filetype plugin indent on
syntax on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'Blackrush/vim-gocode'
Bundle "pangloss/vim-javascript"
Bundle 'SirVer/ultisnips'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kchmck/vim-coffee-script'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-fugitive'
Bundle 'Twinside/vim-hoogle'

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
colorscheme zenburn " grb256

" Tab size
set smartindent
set tabstop=4
set shiftwidth=4

set number	" Because line numbers are nice
set ruler

" Leader
let mapleader=','

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
