"set nocompatible 			"We want the latest Vim settings/options.

"Map Redo ctrl+r to r 
":nmap r <C-R> 



so ~/.vim/plugins.vim
syntax enable
set backspace=indent,eol,start			"Make backspace behave like every other editor."

let mapleader = ','	"The default leader is \ but a comma is much better.
"set number 			"Let's activate line numbers.
set nonumber 		"Let's deactivate line numbers.

set linespace=10

"set tabstop=4       " The width of a TAB is set to 4.



"---------------------- Visuals ----------------------"


"colorscheme atom-dark-256
colorscheme atom-dark
"set t_Co=256


set guioptions-=e			"We don't want Gui tab.

" to remove the side par from the gui vim
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set foldcolumn=2
highlight FoldColumn ctermbg=NONE
highlight LineNr ctermbg=NONE
"		remove the color of the Vertical split
highlight VertSplit ctermbg=NONE ctermfg=NONE









"---------------------- Mappings ----------------------"
" imap is a map for insert mod
" nmap is a map for normal mod
nmap <Leader>Q	:bufdo bd<cr>
nmap <Leader>q	:bd<cr>
" ****************************************************** 
" :echo $MYVIMRC


" Make it easy to edi the vimrc file.
nmap <Leader>ev :tab drop $MYVIMRC<cr>
nmap <Leader>es :CtrlP ~/.vim/snippets/<cr>


"map <C>; <Esc>:
"map <C-A>  <Esc>


"Add Simple Highlight Removal.
nmap <Leader><space> :nohlsearch<cr> 

"Make MERTTree easier to toggle.



nmap <Leader>lff :!ctags -R --exclude=node_modules<cr>
nmap <Leader>f :tag<space>
nmap tn :tn<cr>
nmap tp :tp<cr>
nmap ts :ts<cr>







"---------------------- Plugins ----------------------"

"/
"/ CtrlP
"/

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
"let g:ctrlp_by_filename=1
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules\|vendor', }
" \ 'file': '\v\.(exe|so|dll)$',
" \ 'link': 'some_bad_symbolic_links',
" \ }

let g:ctrlp_match_window = 'top,order:ttb,min:1,max:15,results:30'

"it's like Ctrl+P on sublime
nmap <C-S> :CtrlPBufTag<cr>
nmap <C-E> :CtrlPMRUFiles<cr>
nmap <C-S-[> <C-^>
nmap <C-S-]> <C-]>

"/
"/ NERDTree
"/

let NERDTreeHijackNetrw = 0


nmap <Leader>1 :NERDTreeToggle<cr>


"/
"/ Greplace.vim
"/
set grepprg=ag											"We want to use Ag for the search.
let g:grep_cmd_opts = '--line-numbers --noheading'








"--------------------- Laravel-Specific  --------------------"
"nmap  <Leader><Leader>r	:e routes/web.php<cr>
"nmap  <Leader><Leader>c	:CtrlP app/Http/Controllers<cr>
nmap  <Leader>lrw	:tab drop routes/web.php<cr>

"Show all the Controllers
nmap  <Leader>lc	:CtrlP app/Http/Controllers<cr>
"nmap  <Leader>la	:CtrlP app/<cr>
nmap  <Leader>la	:tab<space>drop<space>app/<cr>:e app/

"Blade templates
nmap  <Leader>lv	:CtrlP resources/views<cr>

nmap  <Leader>lm	:!php artisan make:

"nmap <Leader>lf		:let<space>g:ctrlp_custom_ignore='node_modules'<cr>:CtrlPClearCache<cr>:CtrlP<cr>

nmap  <Leader>lrl	 :!php artisan route:list > .route-list<cr>:tab drop .route-list<cr>
nmap <Leader>rl		:tab drop .route-list<cr>

"--------------------- Laravel-Vagrant-Specific  --------------------"
nmap  <Leader>vrl	 :!ssh<space>vagrant@192.168.10.10<space>' cd code/DMCA && php artisan route:list > .route-list '<cr>:tab drop .route-list<cr>

nmap  <Leader>vc	 :!ssh<space>vagrant@192.168.10.10<space>' cd code/DMCA && 




"---------------------- Auto-Commands  ----------------------"
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








