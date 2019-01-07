"set nocompatible 			"We want the latest Vim settings/options.

"Map Redo ctrl+r to r 
":nmap r <C-R> 



so ~/.vim/plugins.vim
so ~/.vim/plugs.vim
syntax enable
set backspace=indent,eol,start			"Make backspace behave like every other editor.	"

let mapleader = ','		"The default leader is \ but a comma is much better.
"set number 			"Let's activate line numbers.
set nonumber 			"Let's deactivate line numbers.

set linespace=10
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab    		" The width of a TAB is set to 4.
"set autowriteall		" Automatically write the file when switching buffers.
set complete=.,w,b,u		" set auto complete settings 
"     current buffer, any open windows, any loaded buffers, any unloaded buffers



"       Macros
let @a = "yiw/}O$this->pA = $;P?constructOprotected $;P/construct/\", "





"---------------------- Visuals ----------------------"


"colorscheme atom-dark-256
"colorscheme atom-dark
"set t_Co=256
colorscheme rdark-terminal2



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

"  Ctrl-L leaves
imap <C-L> <Esc>
vmap <C-L> <Esc>

" Create A New File In A New Directory		after doing :e newDir/file.new
nmap <Leader>nd  :!mkdir<space>-p<space>%:h<cr>
" ****************************************************** 
" :echo $MYVIMRC


" Make it easy to edi the vimrc file.
nmap <Leader>ev :tab drop $MYVIMRC<cr>
"nmap <Leader>es :CtrlP ~/.vim/snippets/<cr>

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
  \ 'dir':  'node_modules\', }
" \ 'file': '\v\.(exe|so|dll)$',
" \ 'link': 'some_bad_symbolic_links',
" \ }

let g:ctrlp_match_window = 'top,order:ttb,min:1,max:15,results:30'

"it's like Ctrl+P on sublime
nmap <Leader>cpbt :CtrlPBufTag<cr>
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


"/
"/ vim-php-cs-fixer
"/
let g:php_cs_fixer_rules = "@PSR2"
nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>


"/
"/ Prettier, a code formatting
"/
nmap <Leader>pr <Plug>(Prettier)
"Disable auto formatting of files that have "@format" tag
let g:prettier#autoformat = 0
" Running before saving async
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
"let g:prettier#exec_cmd_async = 1


"/
"/ pdv
"/
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>


"/
"/ ultisnips
"/
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"




"---------------------Greplace.viGreplace.vimm Laravel-Specific  --------------------"
"nmap  <Leader><Leader>r	:e routes/web.php<cr>
"nmap  <Leader><Leader>c	:CtrlP app/Http/Controllers<cr>
nmap  <Leader>lrw	:tab drop routes/web.php<cr>

"Show all the Controllers
nmap  <Leader>lc	:CtrlP app/Http/Controllers<cr>
"nmap  <Leader>la	:CtrlP app/<cr>
nmap  <Leader>la	:tab<space>drop<space>app/<cr>:e app/

nmap  <Leader>lm	:!php artisan make:

nmap  <Leader>lrl	 :!php artisan route:list > .route-list<cr>:tab drop .route-list<cr>
nmap <Leader>rl		:tab drop .route-list<cr>

"--------------------- Laravel-Vagrant-Specific  --------------------"
nmap  <Leader>vrl	 :!ssh<space>vagrant@192.168.10.10<space>' cd code/DMCA && php artisan route:list > .route-list '<cr>:tab drop .route-list<cr>

nmap  <Leader>vc	 :!ssh<space>vagrant@192.168.10.10<space>' cd code/DMCA && 



"--------------------- Blade-Specific  --------------------"
"blade settings
au BufRead,BufNewFile *.blade.php set ft=blade
au BufRead,BufNewFile *.blade.php set syntax=html


"Blade templates
nmap  <Leader>lv	:CtrlP resources/views<cr>




"---------------------- Auto-Commands  ----------------------"
augroup autosourcing
	autocmd!
	"Automatically sourve the vimrc file on save
	autocmd BufWritePost .vimrc source %
	autocmd BufWritePost  ~/.vim/plugins.vim source %

augroup END



"----------------- vim-php-namespace
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>


vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>



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








" Snipmate configrations for blade and php
"let g:snipMate = {}
"let g:snipMate.scope_aliases = {}
"let g:snipMate.scope_aliases.blade = 'blade, html'
"let g:snipMate.scope_aliases.php = 'php'

