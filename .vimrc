syntax on

"all tabs are spaces
set expandtab 

"4-space indentation
set shiftwidth=4
set tabstop=4

"Auto- and smart indentation
set autoindent
"set smarttab

"Show line numbers
set nu

"Disable swap files
set noswapfile

"Apparently vim devs still call it FORTRAN
"Apparently I still use fortran
let fortran_free_source=1

"Less shift
noremap ; :
noremap : ;

"Yank to end of line like it should
nnoremap Y y$
