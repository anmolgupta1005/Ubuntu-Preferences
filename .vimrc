" basic setup
set nu 
set tw=80  
set shiftwidth=4
set smartindent
set tabstop=4
set noexpandtab 
set splitright
set textwidth=80
set autoread
set hlsearch
set paste
"indent
"set foldmethod=indent

syntax on
filetype plugin on
colorscheme elflord
"continuouse copy
xnoremap p pgvy

" highlight current line
set cursorline
hi cursorline cterm=underline,bold
" highlight current column
set cursorcolumn

" bash setup
autocmd FileType bash set noexpandtab

" autobuild
au BufWritePost *.tex Make!

" background build shortcut

"related to python
autocmd FileType python set autoindent
autocmd FileType python set tabstop=4
autocmd FileType python set softtabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set expandtab

"related to latex
"set file type latex
au BufRead,BufNewFile *.tex setfiletype latex
"latex spell check
autocmd FileType latex set spell
autocmd FileType latex setglobal spell spelllang=en_us
autocmd FileType latex set spellfile=~/vim/spell/en.utf-8.add
autocmd FileType latex set syntax=tex
autocmd FileType latex let &showbreak="\u21aa "
autocmd FileType latex set autoindent
autocmd FileType latex set paste

au BufRead,BufNewFile *.bib setfiletype bib 
autocmd FileType bib set paste

"specific file settings
autocmd BufRead,BufNewFile /home/bobzhou/2016_spring/research_docs/*.tex setlocal textwidth=0

"background color setup
highlight Comment ctermfg=DarkGrey
"easy commenter plugin
let mapleader=','
 
"" special functions
"veritcal increase, for selected area the numbers will increase consecutively on
"vertical direction if there ctrl+a is pressed
function! Incr()
let a = line('.') - line("'<")
    let c = virtcol("'<")
    if a > 0
        execute 'normal! '.c.'|'.a."\<C-a>"
    endif
    normal `<
endfunction
vnoremap <C-a> :call Incr()<CR>

"macro for latex
map! <F3> \begin{itemize}<CR>\end{itemize}
map! <F4> <C-R>=strftime('%c')<CR>
map! <C-e> \begin{equation}<CR>\end{equation}
map! <C-f> \begin{figure}<CR><tab>\includegraphics[width=4in]{}<CR>\caption{}<CR><C-H><C-H><C-H><C-H>\end{figure}

" plugins
execute pathogen#infect()

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_tex_checkers = ["lacheck"]
let g:syntastic_tex_lacheck_quiet_messages = {
\ "level": "warnings" }

"nerdtree related
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"git nerd tree related
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "",
    \ "Staged"    : "",
    \ "Untracked" : "",
    \ "Renamed"   : "",
    \ "Unmerged"  : "",
    \ "Deleted"   : "",
    \ "Dirty"     : "",
    \ "Clean"     : "",
    \ "Unknown"   : "?"
    \ }

"ctags related
map <C-]> :rightb vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" set popup autocomplete colors
set completeopt=longest,menuone,preview
hi Pmenu ctermbg=DarkGrey ctermbg=white 
"autocomplete 
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

