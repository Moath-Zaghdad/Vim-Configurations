"set nocompatible 			"We want the latest Vim settings/options.

"Map Redo ctrl+r to r 
:nmap r <C-R> 



so ~/.vim/plugins.vim
syntax enable
set backspace=indent,eol,start			"Make backspace behave like every other editor."

let mapleader = ','	"The default leader is \ but a comma is much better.
set number 		"Let's activate line numbers.

set linespace=10

set tabstop=4							"Redefine tab as 4 spaces









"---------------------- Visuals ----------------------"

colorscheme atom-dark-256
"colorscheme atom-dark
"set t_CO=256
"set guifont=Gargi:h17
"set macligatures			"We want pretty symbles, when available.
set guioptions-=e			"We don't want Gui tab.

" to remove the side par from the gui vim
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R







"---------------------- Mappings ----------------------"
" imap is a map for insert mod
" nmap is a map for normal mod

" ****************************************************** 
" :echo $MYVIMRC


" Make it easy to edi the vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"map <C>; <Esc>:
"map <C-A>  <Esc>


"Add Simple Highlight Removal.
nmap <Leader><space> :nohlsearch<cr> 

"Make MERTTree easier to toggle.


"it's like Ctrl+P on sublime
nmap <Leader>1 :NERDTreeToggle<cr>
nmap <C-S> :CtrlPBufTag<cr>
nmap <C-E> :CtrlPMRUFiles<cr>


nmap <Leader>f :tag<space>
nmap tn :tn<space>
nmap tp :tp<space>
nmap ts :ts<space>







"---------------------- Plugins ----------------------"

"/
"/ CtrlP
"/

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules\|\v[\/]\.(git|hg|svn)$', }
" \ 'file': '\v\.(exe|so|dll)$',
" \ 'link': 'some_bad_symbolic_links',
" \ }

let g:ctrlp_match_window = 'top,order:ttb,min:1,max:15,results:30'

nmap <C-[> <C-^>



"/
"/ NERDTree
"/

let NERDTreeHijackNetrw = 0



"/
"/ Greplace.vim
"/
set grepprg=ag											"We want to use Ag for the search.
let g:grep_cmd_opts = '--line-numbers --noheading'








"---------------------- Auto-Vommands  ----------------------"
augroup autosourcing
	autocmd!
	"Automatically sourve the vimrc file on save
	autocmd BufWritePost .vimrc source %
	autocmd BufWritePost  ~/.vim/plugins.vim source %

augroup END






"---------------------- Searcing  ----------------------"
set hlsearch
set incsearch





"---------------------- Split Management  ----------------------"
set splitbelow
set splitright
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>








