
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-vinegar'


Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'


Plugin 'tpope/vim-surround'


" 			Vim syntax for PHP.
Plugin 'StanAngeloff/php.vim'

" 		For inserting "use" statements automatically.
Plugin 'arnaud-lb/vim-php-namespace'


"Plugin 'ervandew/supertab'


"PSR2 Formatting
Plugin 'stephpy/vim-php-cs-fixer'
" prettier Formatter
Plugin 'sbdchd/neoformat'




Plugin 'tobyS/vmustache'
Plugin 'SirVer/ultisnips'
Plugin 'tobyS/pdv'          "   PHP Documentor




"Plugin 'Valloric/YouCompleteMe'



"			Vim-Snipmate Requirements
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"	 	Optional:
"Plugin 'honza/vim-snippets'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
