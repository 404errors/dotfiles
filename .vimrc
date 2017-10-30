"set Vundle manages plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim'}
Plugin 'dim13/smyck.vim'
"put plugin list before this line
call vundle#end()
filetype plugin indent on

set number
syntax on
set smartindent
set shiftwidth=4
set softtabstop=4

" COLORSCHEME FOR EACH FILETYPE
au BufReadPost,BufNewFile *.twig colorscheme koehler 
au BufReadPost,BufNewFile *.css colorscheme slate
au BufReadPost,BufNewFile *.js colorscheme slate2
au BufReadPost,BufNewFile *.py colorscheme molokaiyo
au BufReadPost,BufNewFile *.html colorscheme monokai
au BufReadPost,BufNewFile *.java colorscheme monokai

" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" CTRLP SETTING
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"file ignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class "default vim file ignore
"custom ctrlp ignore
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }
autocmd BufNewFile,BufRead *.java set formatprg=astyle\ -T4p
