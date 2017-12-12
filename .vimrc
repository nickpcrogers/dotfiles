"for Vundle, if it's on the system
if !empty(glob("~/.vim/bundle"))
        syntax off

        set nocompatible
        filetype off
        set rtp+=~/.vim/bundle/Vundle.vim

        "plugins
        call vundle#begin()
        Plugin 'VundleVim/Vundle.vim'
        Plugin 'octol/vim-cpp-enhanced-highlight'
        Plugin 'christoomey/vim-tmux-navigator'
        call vundle#end()

        syntax on
else
        syntax on
endif

"Code Completion (not sure this does anything?)
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"all tabs are spaces but only in python
autocmd FileType * set noexpandtab
autocmd FileType python set expandtab 

"Custom Python syntax variables
let python_highlight_all=1
let python_highlight_indent_errors=0
let python_highlight_space_errors=0

"4-space indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4

"Auto- and smart indentation
set autoindent

"Always show statusbar
set showtabline=2

"Show line numbers
set nu

"Disable swap files
set noswapfile

"cd automatically to current working file
set autochdir

"Buffer switching
nnoremap gb :bnext<CR>
nnoremap gB :bprev<CR>

".md as markdown
au BufRead,BufNewFile *.md set filetype=markdown

"A portable solution to avoiding escape key (cant remap caps :( )
imap jk <Esc>

"I don't expect to need this ever again but who knows
let fortran_free_source=1

"Make yank consistent with delete and change
nnoremap Y y$

"make U redo because it confuses me
nnoremap U <C-R>

"Navigate soft-break lines like normal ones
nnoremap j gj
nnoremap k gk

"Visually select last insert mode text
nnoremap gV `[v`]

"Edit related .h or .cpp
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

"Sudo write when you forgot to sudo 
cmap w!! w !sudo tee > /dev/null %

"Incremental search
set incsearch

"Window Navigation
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

"X11 clipboard things
vnoremap <c-c> "+y
vnoremap <c-v> "+p
vnoremap <c-x> "+d

"Ctrl-a is tmux stuff
nnoremap g= <c-a>
nnoremap g- <c-x>
