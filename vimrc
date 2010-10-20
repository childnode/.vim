set nocompatible      " Don't force vi compatibility

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

behave xterm          " Alternative is "mswin"


" clear highlighted search results
nmap <silent> <C-N> :silent noh<CR>

" With the following mapping you can press Q every time you alter something in 
" a paragraph, and the line-breaks get sorted out. The default meaning of 
" Q is not useful, and anyway gQ makes a better job of it.
vnoremap Q gq
nnoremap Q gqap

" Flipping through open buffers
nnoremap <C-N> :bn<Enter>
nnoremap <C-P> :bp<Enter>
map <F12> :set number!<CR>
map <C-i> :set encoding=utf8<Enter>


set confirm
set mouse=a           " Enable mouse support
set nowrap
set selectmode=key    " to enter visual mode when selecting with mouse
set ai                " Turn on autoindenting
set aw                " Save file when compiling, etc.
set bs=2              " Allow backspacing over everything in insert mode
set sm                " Show matching brackets/parentheses ...
" set tw=70             " Limit the width of text to 70
set viminfo='20,\"50  " Read/write a .viminfo file, don't store more than 50 lines of registers
set whichwrap=b,s,<,>,[,] " End of line cursor support
set nobackup          " Do not create backup files
set expandtab         " No tabs in the output file!
set ruler
set history=50    " keep 50 lines of command line history
set showcmd   " display incomplete commands
set incsearch   " do incremental searching
set shiftwidth=4      " What you get for ^D
set tabstop=4         " Same as shiftwidth
set showmatch
set ignorecase
set foldmethod=indent
set foldlevelstart=1 "all folds closed when starting editing
set vb t_vb=
set showmatch " show matching brackets
set mat=5 " how many tenths of a second to blink matching brackets for
set nohlsearch " do not highlight searched for phrases
set incsearch " BUT do highlight as you type you search phrase

let perl_extended_vars=1 " highlight advanced perl vars inside strings

syntax on



"set comments=sl:/**,mb:\ *,exl:\ */,sr:/*,mb:*,exl:*/,://

" When starting to edit a file:
"   For Java, C, and C++ files set formatting of comments and set 
"   C-indenting on.   For other files switch it off.
"   Don't change the sequence, it's important that the line with * comes first.
autocmd BufRead * set formatoptions=tcql nocindent comments&
autocmd BufRead *.java,*.c,*.h,*.cc set formatoptions=ctroq cindent comments=sr:/**,mb:*,elx:*/,sr:/*,mb:*,elx:*/,://

autocmd Filetype html,xml,xsl,xml.in,prop.in source ~/personal/config/vim/runtime/scripts/closetag.vim

au BufNewFile,BufRead *.tmpl :set ft=html " all my .tmpl files ARE html

augroup mkd
    autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:> 
augroup END

filetype plugin indent on


" Completion popup selection like other IDEs
" http://www.vim.org/tips/tip.php?tip_id=1228
"inoremap <silent><Esc>      <C-r>=pumvisible()?"<C-e>":"<Esc>"<CR>
"inoremap <silent><CR>       <C-r>=pumvisible()?"<C-y>":"<CR>"<CR>
"inoremap <silent><Down>     <C-r>=pumvisible()?"<C-n>":"<Down>"<CR>
"inoremap <silent><Up>       <C-r>=pumvisible()?"<C-p>":"<Up>"<CR>
"inoremap <silent><PageDown> <C-r>=pumvisible()?"<PageDown><C-p><C-n>":"<PageDown>"<CR>
"inoremap <silent><PageUp>   <C-r>=pumvisible()?"<PageUp><C-p><C-n>":"<PageUp>"<CR> 



"
" TRY THESE SOMETIME LATER
"
"
"" abbreviations
" iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
"
"Here's a function to overload the <tab> , <c-i> functionality to first go forward in the jump list, and if there is nowhere to go, it will move to the next window:
"
"function! Tab_jump_or_win_move()
"let l = line(".")
"let c = col(".")
"let b = bufnr("%")
"exe "normal! \<esc>\<tab>"
"if l == line(".") && c == col(".") && b == bufnr("%")
"call feedkeys( "\<c-w>\<c-w>", "t" )
"endif
"endfunction
"
"nnoremap <silent> <tab> :call Tab_jump_or_win_move()<CR> 

