"set Vundle manages plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
cd ~/workspace/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary' " comment stuff out
Plugin 'tpope/vim-unimpaired' " mappings which are simply short normal mode aliases for commonly used ex commands
Plugin 'tpope/vim-ragtag' " endings for html, xml, etc. - ehances surround
Plugin 'tpope/vim-surround' " mappings to easily delete, change and add such surroundings in pairs, such as quotes, parens, etc.
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline' " fancy statusline
Plugin 'vim-airline/vim-airline-themes' " themes for vim-airline
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Chiel92/vim-autoformat'
"lugin 'dim13/smyck.vim'
"put plugin list before this line
call vundle#end()
filetype plugin indent on

set number
syntax on
set smartindent
set cindent
set shiftwidth=4
set softtabstop=4
set splitright
set wrap linebreak nolist
" Nerdtree
map <C-n> :NERDTreeToggle<CR>
"set guifont=SauceCodePro\ Nerd\ Font\ Mono\ Regular\ 15

set background=dark
"colorscheme solarized
colorscheme gruvbox
let g:solarized_termtrans=1
let g:solarized_underline=0
let g:airline_powerline_fonts = 1
let g:solarized_termcolors=256
" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" CTRLP SETTING
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"file ignore"
"for easy navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"custom command
command Cvim :vsp ~/.vimrc

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class "default vim file ignore
"custom ctrlp ignore
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }
"autocmd BufNewFile,BufRead *.java set formatprg=astyle\ -T4p
" autocmd BufNewFile,BufRead *.java set formatprg=astyle\ -A2
autocmd BufNewFile,BufRead *.java set formatprg=astyle\ --style=java
